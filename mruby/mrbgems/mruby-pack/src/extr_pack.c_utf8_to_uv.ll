; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_utf8_to_uv.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_utf8_to_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"malformed UTF-8 character\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"malformed UTF-8 character (expected %d bytes, given %d bytes)\00", align 1
@utf8_limits = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"redundant UTF-8 sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64*)* @utf8_to_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @utf8_to_uv(i32* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %6, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 %14, 255
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  store i64 1, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = and i64 %18, 128
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i64*, i64** %7, align 8
  store i64 1, i64* %22, align 8
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %4, align 8
  br label %144

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = and i64 %25, 64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i64*, i64** %7, align 8
  store i64 1, i64* %29, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %32 = call i32 @mrb_raise(i32* %30, i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i64, i64* %9, align 8
  %35 = and i64 %34, 32
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  store i64 2, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = and i64 %38, 31
  store i64 %39, i64* %9, align 8
  br label %77

40:                                               ; preds = %33
  %41 = load i64, i64* %9, align 8
  %42 = and i64 %41, 16
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  store i64 3, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = and i64 %45, 15
  store i64 %46, i64* %9, align 8
  br label %76

47:                                               ; preds = %40
  %48 = load i64, i64* %9, align 8
  %49 = and i64 %48, 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  store i64 4, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = and i64 %52, 7
  store i64 %53, i64* %9, align 8
  br label %75

54:                                               ; preds = %47
  %55 = load i64, i64* %9, align 8
  %56 = and i64 %55, 4
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  store i64 5, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = and i64 %59, 3
  store i64 %60, i64* %9, align 8
  br label %74

61:                                               ; preds = %54
  %62 = load i64, i64* %9, align 8
  %63 = and i64 %62, 2
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  store i64 6, i64* %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = and i64 %66, 1
  store i64 %67, i64* %9, align 8
  br label %73

68:                                               ; preds = %61
  %69 = load i64*, i64** %7, align 8
  store i64 1, i64* %69, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %72 = call i32 @mrb_raise(i32* %70, i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %73, %58
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %44
  br label %77

77:                                               ; preds = %76, %37
  %78 = load i64, i64* %10, align 8
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %85 = load i64, i64* %10, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @mrb_raisef(i32* %83, i32 %84, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %87)
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %10, align 8
  %92 = load i64*, i64** %7, align 8
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %128

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %126, %95
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %10, align 8
  %99 = icmp ne i64 %97, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  %103 = load i8, i8* %101, align 1
  %104 = sext i8 %103 to i32
  %105 = and i32 %104, 255
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 192
  %108 = icmp ne i32 %107, 128
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = load i64, i64* %10, align 8
  %111 = add nsw i64 %110, 1
  %112 = load i64*, i64** %7, align 8
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, %111
  store i64 %114, i64* %112, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %117 = call i32 @mrb_raise(i32* %115, i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %126

118:                                              ; preds = %100
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, 63
  store i32 %120, i32* %8, align 4
  %121 = load i64, i64* %9, align 8
  %122 = shl i64 %121, 6
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = or i64 %122, %124
  store i64 %125, i64* %9, align 8
  br label %126

126:                                              ; preds = %118, %109
  br label %96

127:                                              ; preds = %96
  br label %128

128:                                              ; preds = %127, %89
  %129 = load i64*, i64** %7, align 8
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, 1
  store i64 %131, i64* %10, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i64*, i64** @utf8_limits, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ult i64 %132, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %141 = call i32 @mrb_raise(i32* %139, i32 %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %128
  %143 = load i64, i64* %9, align 8
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %142, %21
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

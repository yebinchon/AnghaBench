; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regedit.c_get_file_name.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regedit.c_get_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i32] [i32 37, i32 115, i32 58, i32 32, i32 85, i32 110, i32 101, i32 120, i32 112, i32 101, i32 99, i32 116, i32 101, i32 100, i32 32, i32 101, i32 110, i32 100, i32 32, i32 111, i32 102, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 110, i32 97, i32 109, i32 101, i32 33, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_file_name(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32**, i32*** %3, align 8
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %125

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 34
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  %24 = load i32**, i32*** %3, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %24, align 8
  br label %27

27:                                               ; preds = %42, %21
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 34
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = call i8* (...) @getAppName()
  %40 = call i32 @fwprintf(i32 %38, i8* bitcast ([34 x i32]* @.str to i8*), i8* %39)
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %27

47:                                               ; preds = %27
  br label %69

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @iswspace(i32 %57)
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %54, %49
  %62 = phi i1 [ false, %49 ], [ %60, %54 ]
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %49

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i32*, i32** %4, align 8
  %71 = load i32**, i32*** %3, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = mul i64 %73, 4
  %75 = call i32 @memcpy(i32* %70, i32* %72, i64 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = sub i64 %77, 1
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 92
  br i1 %81, label %82, label %87

82:                                               ; preds = %69
  %83 = load i32*, i32** %4, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub i64 %84, 1
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 0, i32* %86, align 4
  br label %91

87:                                               ; preds = %69
  %88 = load i32*, i32** %4, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %115, %101
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @iswspace(i32 %110)
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %107, %102
  %114 = phi i1 [ false, %102 ], [ %112, %107 ]
  br i1 %114, label %115, label %120

115:                                              ; preds = %113
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %6, align 8
  br label %102

120:                                              ; preds = %113
  %121 = load i64, i64* %6, align 8
  %122 = load i32**, i32*** %3, align 8
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 %121
  store i32* %124, i32** %122, align 8
  br label %125

125:                                              ; preds = %120, %15
  ret void
}

declare dso_local i32 @fwprintf(i32, i8*, i8*) #1

declare dso_local i8* @getAppName(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @iswspace(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

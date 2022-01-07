; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_symbol.c_sym_intern.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_symbol.c_sym_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SYMBOL_NORMAL_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i8*, i64, i64)* @sym_intern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sym_intern(%struct.TYPE_10__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @sym_validate_len(%struct.TYPE_10__* %15, i64 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @find_symbol(%struct.TYPE_10__* %18, i8* %19, i64 %20, i64* %12)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %5, align 8
  br label %151

26:                                               ; preds = %4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  store i64 %30, i64* %10, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %26
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i64 100, i64* %43, align 8
  br label %52

44:                                               ; preds = %36
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 %47, 6
  %49 = udiv i64 %48, 5
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %44, %41
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  %61 = mul i64 24, %60
  %62 = trunc i64 %61 to i32
  %63 = call i64 @mrb_realloc(%struct.TYPE_10__* %53, %struct.TYPE_9__* %56, i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_9__*
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %66, align 8
  br label %67

67:                                               ; preds = %52, %26
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %71
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %11, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %67
  %79 = load i8*, i8** %7, align 8
  %80 = call i64 @mrb_ro_data_p(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78, %67
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  br label %108

89:                                               ; preds = %78
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 1
  %93 = call i64 @mrb_malloc(%struct.TYPE_10__* %90, i64 %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %13, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @memcpy(i8* %95, i8* %96, i64 %97)
  %99 = load i8*, i8** %13, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %13, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %89, %82
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %108
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 %117, %124
  store i64 %125, i64* %14, align 8
  %126 = load i64, i64* %14, align 8
  %127 = icmp ugt i64 %126, 255
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  store i32 255, i32* %130, align 8
  br label %136

131:                                              ; preds = %116
  %132 = load i64, i64* %14, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %128
  br label %140

137:                                              ; preds = %108
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 0, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %136
  %141 = load i64, i64* %10, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* @SYMBOL_NORMAL_SHIFT, align 8
  %150 = shl i64 %148, %149
  store i64 %150, i64* %5, align 8
  br label %151

151:                                              ; preds = %140, %24
  %152 = load i64, i64* %5, align 8
  ret i64 %152
}

declare dso_local i32 @sym_validate_len(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @find_symbol(%struct.TYPE_10__*, i8*, i64, i64*) #1

declare dso_local i64 @mrb_realloc(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @mrb_ro_data_p(i8*) #1

declare dso_local i64 @mrb_malloc(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

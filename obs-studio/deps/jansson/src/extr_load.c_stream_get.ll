; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_stream_get.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_stream_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i64, i32 (i32)*, i64, i64, i32, i32, i32 }

@STREAM_STATE_OK = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@STREAM_STATE_EOF = common dso_local global i32 0, align 4
@STREAM_STATE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to decode byte 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @stream_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_get(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STREAM_STATE_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %161

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %110, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %32(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @EOF, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i32, i32* @STREAM_STATE_EOF, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @STREAM_STATE_EOF, align 4
  store i32 %45, i32* %3, align 4
  br label %161

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp sle i32 128, %54
  br i1 %55, label %56, label %104

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  %58 = icmp sle i32 %57, 255
  br i1 %58, label %59, label %104

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @utf8_check_first(i32 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %150

65:                                               ; preds = %59
  %66 = load i64, i64* %8, align 8
  %67 = icmp uge i64 %66, 2
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  store i64 1, i64* %7, align 8
  br label %70

70:                                               ; preds = %87, %65
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %77(i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %74
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %70

90:                                               ; preds = %70
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @utf8_check_full(i32* %93, i64 %94, i32* null)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %150

98:                                               ; preds = %90
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 0, i32* %103, align 4
  br label %109

104:                                              ; preds = %56, %46
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %104, %98
  br label %110

110:                                              ; preds = %109, %19
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = getelementptr inbounds i32, i32* %113, i64 %116
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %6, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 10
  br i1 %125, label %126, label %138

126:                                              ; preds = %110
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 5
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  store i64 0, i64* %137, align 8
  br label %148

138:                                              ; preds = %110
  %139 = load i32, i32* %6, align 4
  %140 = call i64 @utf8_check_first(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %142, %138
  br label %148

148:                                              ; preds = %147, %126
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %161

150:                                              ; preds = %97, %64
  %151 = load i32, i32* @STREAM_STATE_ERROR, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = call i32 @stream_to_lex(%struct.TYPE_4__* %156)
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @error_set(i32* %155, i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @STREAM_STATE_ERROR, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %150, %148, %40, %14
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i64 @utf8_check_first(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @utf8_check_full(i32*, i64, i32*) #1

declare dso_local i32 @error_set(i32*, i32, i8*, i32) #1

declare dso_local i32 @stream_to_lex(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

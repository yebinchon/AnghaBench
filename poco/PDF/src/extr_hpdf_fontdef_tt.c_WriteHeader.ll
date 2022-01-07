; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_WriteHeader.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_WriteHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c" WriteHeader\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*)* @WriteHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WriteHeader(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %8, align 8
  %15 = load i64, i64* @HPDF_OK, align 8
  store i64 %15, i64* %9, align 8
  %16 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 15
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @HPDF_Stream_Write(%struct.TYPE_13__* %17, i32 %21, i32 4)
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %9, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @WriteUINT32(%struct.TYPE_13__* %25, i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %9, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = call i64 @WriteUINT32(%struct.TYPE_13__* %37, i32 0)
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %9, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @WriteUINT32(%struct.TYPE_13__* %41, i32 %45)
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @WriteUINT16(%struct.TYPE_13__* %49, i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @WriteUINT16(%struct.TYPE_13__* %57, i32 %61)
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %9, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @HPDF_Stream_Write(%struct.TYPE_13__* %65, i32 %69, i32 8)
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @HPDF_Stream_Write(%struct.TYPE_13__* %73, i32 %77, i32 8)
  %79 = load i64, i64* %9, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @WriteINT16(%struct.TYPE_13__* %81, i32 %85)
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %9, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @WriteINT16(%struct.TYPE_13__* %89, i32 %93)
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %9, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @WriteINT16(%struct.TYPE_13__* %97, i32 %101)
  %103 = load i64, i64* %9, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @WriteINT16(%struct.TYPE_13__* %105, i32 %109)
  %111 = load i64, i64* %9, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %9, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @WriteUINT16(%struct.TYPE_13__* %113, i32 %117)
  %119 = load i64, i64* %9, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %9, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @WriteUINT16(%struct.TYPE_13__* %121, i32 %125)
  %127 = load i64, i64* %9, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %9, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @WriteINT16(%struct.TYPE_13__* %129, i32 %133)
  %135 = load i64, i64* %9, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %9, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @WriteINT16(%struct.TYPE_13__* %137, i32 %141)
  %143 = load i64, i64* %9, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %9, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @WriteINT16(%struct.TYPE_13__* %145, i32 %149)
  %151 = load i64, i64* %9, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %9, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* @HPDF_OK, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %3
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @HPDF_Error_GetCode(i32 %159)
  store i64 %160, i64* %4, align 8
  br label %163

161:                                              ; preds = %3
  %162 = load i64, i64* @HPDF_OK, align 8
  store i64 %162, i64* %4, align 8
  br label %163

163:                                              ; preds = %161, %156
  %164 = load i64, i64* %4, align 8
  ret i64 %164
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Stream_Write(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @WriteUINT32(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @WriteUINT16(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @WriteINT16(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

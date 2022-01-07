; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseHmtx.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseHmtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"hmtx\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c" HPDF_TTFontDef_ParseHtmx\0A\00", align 1
@HPDF_TTF_MISSING_TABLE = common dso_local global i32 0, align 4
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c" ParseHmtx metric[%u] aw=%u lsb=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @ParseHmtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseHmtx(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = call %struct.TYPE_11__* @FindTable(%struct.TYPE_12__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HPDF_TTF_MISSING_TABLE, align 4
  %25 = call i64 @HPDF_SetError(i32 %23, i32 %24, i32 7)
  store i64 %25, i64* %2, align 8
  br label %141

26:                                               ; preds = %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HPDF_SEEK_SET, align 4
  %34 = call i64 @HPDF_Stream_Seek(i32 %29, i32 %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @HPDF_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %2, align 8
  br label %141

40:                                               ; preds = %26
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = trunc i64 %48 to i32
  %50 = call %struct.TYPE_10__* @HPDF_GetMem(i32 %43, i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = icmp ne %struct.TYPE_10__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %40
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @HPDF_Error_GetCode(i32 %60)
  store i64 %61, i64* %2, align 8
  br label %141

62:                                               ; preds = %40
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %110, %62
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %113

72:                                               ; preds = %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = call i64 @GetUINT16(i32 %75, i32* %77)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* @HPDF_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i64, i64* %6, align 8
  store i64 %82, i64* %2, align 8
  br label %141

83:                                               ; preds = %72
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = call i64 @GetINT16(i32 %86, i32* %88)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* @HPDF_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i64, i64* %6, align 8
  store i64 %93, i64* %2, align 8
  br label %141

94:                                               ; preds = %83
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @HPDF_PTRACE(i8* %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %8, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 1
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %9, align 8
  br label %110

110:                                              ; preds = %94
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %66

113:                                              ; preds = %66
  br label %114

114:                                              ; preds = %134, %113
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %139

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = call i64 @GetINT16(i32 %126, i32* %128)
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* @HPDF_OK, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %120
  %133 = load i64, i64* %6, align 8
  store i64 %133, i64* %2, align 8
  br label %141

134:                                              ; preds = %120
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 1
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %9, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %114

139:                                              ; preds = %114
  %140 = load i64, i64* @HPDF_OK, align 8
  store i64 %140, i64* %2, align 8
  br label %141

141:                                              ; preds = %139, %132, %92, %81, %57, %38, %20
  %142 = load i64, i64* %2, align 8
  ret i64 %142
}

declare dso_local %struct.TYPE_11__* @FindTable(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_Stream_Seek(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @HPDF_GetMem(i32, i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @GetUINT16(i32, i32*) #1

declare dso_local i64 @GetINT16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

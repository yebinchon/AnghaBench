; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datum_image_eq.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datum_image_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }

@VARHDRSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unexpected typLen: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datum_image_eq(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.varlena*, align 8
  %14 = alloca %struct.varlena*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %12, align 4
  br label %113

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = call i8* @DatumGetPointer(i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = call i8* @DatumGetPointer(i64 %30)
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = call i64 @memcmp(i8* %29, i8* %31, i64 %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %12, align 4
  br label %112

37:                                               ; preds = %24
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %81

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @toast_raw_datum_size(i64 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @toast_raw_datum_size(i64 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %80

49:                                               ; preds = %40
  %50 = load i64, i64* %6, align 8
  %51 = call %struct.varlena* @PG_DETOAST_DATUM_PACKED(i64 %50)
  store %struct.varlena* %51, %struct.varlena** %13, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call %struct.varlena* @PG_DETOAST_DATUM_PACKED(i64 %52)
  store %struct.varlena* %53, %struct.varlena** %14, align 8
  %54 = load %struct.varlena*, %struct.varlena** %13, align 8
  %55 = call i8* @VARDATA_ANY(%struct.varlena* %54)
  %56 = load %struct.varlena*, %struct.varlena** %14, align 8
  %57 = call i8* @VARDATA_ANY(%struct.varlena* %56)
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @VARHDRSZ, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i64 @memcmp(i8* %55, i8* %57, i64 %60)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load %struct.varlena*, %struct.varlena** %13, align 8
  %65 = ptrtoint %struct.varlena* %64 to i64
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = load %struct.varlena*, %struct.varlena** %13, align 8
  %70 = call i32 @pfree(%struct.varlena* %69)
  br label %71

71:                                               ; preds = %68, %49
  %72 = load %struct.varlena*, %struct.varlena** %14, align 8
  %73 = ptrtoint %struct.varlena* %72 to i64
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.varlena*, %struct.varlena** %14, align 8
  %78 = call i32 @pfree(%struct.varlena* %77)
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %48
  br label %111

81:                                               ; preds = %37
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, -2
  br i1 %83, label %84, label %106

84:                                               ; preds = %81
  %85 = load i64, i64* %6, align 8
  %86 = call i8* @DatumGetCString(i64 %85)
  store i8* %86, i8** %15, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i8* @DatumGetCString(i64 %87)
  store i8* %88, i8** %16, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = call i64 @strlen(i8* %89)
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %10, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %115

99:                                               ; preds = %84
  %100 = load i8*, i8** %15, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @memcmp(i8* %100, i8* %101, i64 %102)
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %12, align 4
  br label %110

106:                                              ; preds = %81
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @elog(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %99
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111, %27
  br label %113

113:                                              ; preds = %112, %19
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %98
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @DatumGetPointer(i64) #1

declare dso_local i64 @toast_raw_datum_size(i64) #1

declare dso_local %struct.varlena* @PG_DETOAST_DATUM_PACKED(i64) #1

declare dso_local i8* @VARDATA_ANY(%struct.varlena*) #1

declare dso_local i32 @pfree(%struct.varlena*) #1

declare dso_local i8* @DatumGetCString(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

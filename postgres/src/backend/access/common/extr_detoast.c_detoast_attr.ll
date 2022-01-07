; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_detoast_attr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_detoast_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }
%struct.varatt_indirect = type { i64 }

@VARHDRSZ_SHORT = common dso_local global i64 0, align 8
@VARHDRSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.varlena* @detoast_attr(%struct.varlena* %0) #0 {
  %2 = alloca %struct.varlena*, align 8
  %3 = alloca %struct.varlena*, align 8
  %4 = alloca %struct.varatt_indirect, align 8
  %5 = alloca %struct.varlena*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.varlena*, align 8
  store %struct.varlena* %0, %struct.varlena** %2, align 8
  %9 = load %struct.varlena*, %struct.varlena** %2, align 8
  %10 = call i64 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.varlena*, %struct.varlena** %2, align 8
  %14 = call %struct.varlena* @toast_fetch_datum(%struct.varlena* %13)
  store %struct.varlena* %14, %struct.varlena** %2, align 8
  %15 = load %struct.varlena*, %struct.varlena** %2, align 8
  %16 = call i64 @VARATT_IS_COMPRESSED(%struct.varlena* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.varlena*, %struct.varlena** %2, align 8
  store %struct.varlena* %19, %struct.varlena** %3, align 8
  %20 = load %struct.varlena*, %struct.varlena** %3, align 8
  %21 = call %struct.varlena* @toast_decompress_datum(%struct.varlena* %20)
  store %struct.varlena* %21, %struct.varlena** %2, align 8
  %22 = load %struct.varlena*, %struct.varlena** %3, align 8
  %23 = call i32 @pfree(%struct.varlena* %22)
  br label %24

24:                                               ; preds = %18, %12
  br label %111

25:                                               ; preds = %1
  %26 = load %struct.varlena*, %struct.varlena** %2, align 8
  %27 = call i64 @VARATT_IS_EXTERNAL_INDIRECT(%struct.varlena* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load %struct.varlena*, %struct.varlena** %2, align 8
  %31 = getelementptr inbounds %struct.varatt_indirect, %struct.varatt_indirect* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @VARATT_EXTERNAL_GET_POINTER(i64 %32, %struct.varlena* %30)
  %34 = getelementptr inbounds %struct.varatt_indirect, %struct.varatt_indirect* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.varlena*
  store %struct.varlena* %36, %struct.varlena** %2, align 8
  %37 = load %struct.varlena*, %struct.varlena** %2, align 8
  %38 = call i64 @VARATT_IS_EXTERNAL_INDIRECT(%struct.varlena* %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load %struct.varlena*, %struct.varlena** %2, align 8
  %44 = call %struct.varlena* @detoast_attr(%struct.varlena* %43)
  store %struct.varlena* %44, %struct.varlena** %2, align 8
  %45 = load %struct.varlena*, %struct.varlena** %2, align 8
  %46 = getelementptr inbounds %struct.varatt_indirect, %struct.varatt_indirect* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.varlena*
  %49 = icmp eq %struct.varlena* %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %29
  %51 = load %struct.varlena*, %struct.varlena** %2, align 8
  %52 = call i64 @VARSIZE_ANY(%struct.varlena* %51)
  %53 = call i64 @palloc(i64 %52)
  %54 = inttoptr i64 %53 to %struct.varlena*
  store %struct.varlena* %54, %struct.varlena** %5, align 8
  %55 = load %struct.varlena*, %struct.varlena** %5, align 8
  %56 = load %struct.varlena*, %struct.varlena** %2, align 8
  %57 = load %struct.varlena*, %struct.varlena** %2, align 8
  %58 = call i64 @VARSIZE_ANY(%struct.varlena* %57)
  %59 = call i32 @memcpy(%struct.varlena* %55, %struct.varlena* %56, i64 %58)
  %60 = load %struct.varlena*, %struct.varlena** %5, align 8
  store %struct.varlena* %60, %struct.varlena** %2, align 8
  br label %61

61:                                               ; preds = %50, %29
  br label %110

62:                                               ; preds = %25
  %63 = load %struct.varlena*, %struct.varlena** %2, align 8
  %64 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(%struct.varlena* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load %struct.varlena*, %struct.varlena** %2, align 8
  %68 = call %struct.varlena* @detoast_external_attr(%struct.varlena* %67)
  store %struct.varlena* %68, %struct.varlena** %2, align 8
  %69 = load %struct.varlena*, %struct.varlena** %2, align 8
  %70 = call i32 @VARATT_IS_EXTENDED(%struct.varlena* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  br label %109

75:                                               ; preds = %62
  %76 = load %struct.varlena*, %struct.varlena** %2, align 8
  %77 = call i64 @VARATT_IS_COMPRESSED(%struct.varlena* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.varlena*, %struct.varlena** %2, align 8
  %81 = call %struct.varlena* @toast_decompress_datum(%struct.varlena* %80)
  store %struct.varlena* %81, %struct.varlena** %2, align 8
  br label %108

82:                                               ; preds = %75
  %83 = load %struct.varlena*, %struct.varlena** %2, align 8
  %84 = call i64 @VARATT_IS_SHORT(%struct.varlena* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  %87 = load %struct.varlena*, %struct.varlena** %2, align 8
  %88 = call i64 @VARSIZE_SHORT(%struct.varlena* %87)
  %89 = load i64, i64* @VARHDRSZ_SHORT, align 8
  %90 = sub nsw i64 %88, %89
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @VARHDRSZ, align 8
  %93 = add nsw i64 %91, %92
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @palloc(i64 %94)
  %96 = inttoptr i64 %95 to %struct.varlena*
  store %struct.varlena* %96, %struct.varlena** %8, align 8
  %97 = load %struct.varlena*, %struct.varlena** %8, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @SET_VARSIZE(%struct.varlena* %97, i64 %98)
  %100 = load %struct.varlena*, %struct.varlena** %8, align 8
  %101 = call %struct.varlena* @VARDATA(%struct.varlena* %100)
  %102 = load %struct.varlena*, %struct.varlena** %2, align 8
  %103 = call %struct.varlena* @VARDATA_SHORT(%struct.varlena* %102)
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @memcpy(%struct.varlena* %101, %struct.varlena* %103, i64 %104)
  %106 = load %struct.varlena*, %struct.varlena** %8, align 8
  store %struct.varlena* %106, %struct.varlena** %2, align 8
  br label %107

107:                                              ; preds = %86, %82
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108, %66
  br label %110

110:                                              ; preds = %109, %61
  br label %111

111:                                              ; preds = %110, %24
  %112 = load %struct.varlena*, %struct.varlena** %2, align 8
  ret %struct.varlena* %112
}

declare dso_local i64 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena*) #1

declare dso_local %struct.varlena* @toast_fetch_datum(%struct.varlena*) #1

declare dso_local i64 @VARATT_IS_COMPRESSED(%struct.varlena*) #1

declare dso_local %struct.varlena* @toast_decompress_datum(%struct.varlena*) #1

declare dso_local i32 @pfree(%struct.varlena*) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_INDIRECT(%struct.varlena*) #1

declare dso_local i32 @VARATT_EXTERNAL_GET_POINTER(i64, %struct.varlena*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i64 @VARSIZE_ANY(%struct.varlena*) #1

declare dso_local i32 @memcpy(%struct.varlena*, %struct.varlena*, i64) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(%struct.varlena*) #1

declare dso_local %struct.varlena* @detoast_external_attr(%struct.varlena*) #1

declare dso_local i32 @VARATT_IS_EXTENDED(%struct.varlena*) #1

declare dso_local i64 @VARATT_IS_SHORT(%struct.varlena*) #1

declare dso_local i64 @VARSIZE_SHORT(%struct.varlena*) #1

declare dso_local i32 @SET_VARSIZE(%struct.varlena*, i64) #1

declare dso_local %struct.varlena* @VARDATA(%struct.varlena*) #1

declare dso_local %struct.varlena* @VARDATA_SHORT(%struct.varlena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

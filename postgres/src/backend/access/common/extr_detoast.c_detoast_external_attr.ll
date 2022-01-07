; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_detoast_external_attr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_detoast_external_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }
%struct.varatt_indirect = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.varlena* @detoast_external_attr(%struct.varlena* %0) #0 {
  %2 = alloca %struct.varlena*, align 8
  %3 = alloca %struct.varlena*, align 8
  %4 = alloca %struct.varlena*, align 8
  %5 = alloca %struct.varatt_indirect, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.varlena* %0, %struct.varlena** %3, align 8
  %8 = load %struct.varlena*, %struct.varlena** %3, align 8
  %9 = call i64 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.varlena*, %struct.varlena** %3, align 8
  %13 = call %struct.varlena* @toast_fetch_datum(%struct.varlena* %12)
  store %struct.varlena* %13, %struct.varlena** %4, align 8
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.varlena*, %struct.varlena** %3, align 8
  %16 = call i64 @VARATT_IS_EXTERNAL_INDIRECT(%struct.varlena* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load %struct.varlena*, %struct.varlena** %3, align 8
  %20 = getelementptr inbounds %struct.varatt_indirect, %struct.varatt_indirect* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @VARATT_EXTERNAL_GET_POINTER(i64 %21, %struct.varlena* %19)
  %23 = getelementptr inbounds %struct.varatt_indirect, %struct.varatt_indirect* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.varlena*
  store %struct.varlena* %25, %struct.varlena** %3, align 8
  %26 = load %struct.varlena*, %struct.varlena** %3, align 8
  %27 = call i64 @VARATT_IS_EXTERNAL_INDIRECT(%struct.varlena* %26)
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.varlena*, %struct.varlena** %3, align 8
  %33 = call i64 @VARATT_IS_EXTERNAL(%struct.varlena* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load %struct.varlena*, %struct.varlena** %3, align 8
  %37 = call %struct.varlena* @detoast_external_attr(%struct.varlena* %36)
  store %struct.varlena* %37, %struct.varlena** %2, align 8
  br label %72

38:                                               ; preds = %18
  %39 = load %struct.varlena*, %struct.varlena** %3, align 8
  %40 = call i32 @VARSIZE_ANY(%struct.varlena* %39)
  %41 = call i64 @palloc(i32 %40)
  %42 = inttoptr i64 %41 to %struct.varlena*
  store %struct.varlena* %42, %struct.varlena** %4, align 8
  %43 = load %struct.varlena*, %struct.varlena** %4, align 8
  %44 = load %struct.varlena*, %struct.varlena** %3, align 8
  %45 = load %struct.varlena*, %struct.varlena** %3, align 8
  %46 = call i32 @VARSIZE_ANY(%struct.varlena* %45)
  %47 = call i32 @memcpy(%struct.varlena* %43, %struct.varlena* %44, i32 %46)
  br label %69

48:                                               ; preds = %14
  %49 = load %struct.varlena*, %struct.varlena** %3, align 8
  %50 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(%struct.varlena* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.varlena*, %struct.varlena** %3, align 8
  %54 = call i32 @PointerGetDatum(%struct.varlena* %53)
  %55 = call i32* @DatumGetEOHP(i32 %54)
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @EOH_get_flat_size(i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @palloc(i32 %58)
  %60 = inttoptr i64 %59 to %struct.varlena*
  store %struct.varlena* %60, %struct.varlena** %4, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.varlena*, %struct.varlena** %4, align 8
  %63 = bitcast %struct.varlena* %62 to i8*
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @EOH_flatten_into(i32* %61, i8* %63, i32 %64)
  br label %68

66:                                               ; preds = %48
  %67 = load %struct.varlena*, %struct.varlena** %3, align 8
  store %struct.varlena* %67, %struct.varlena** %4, align 8
  br label %68

68:                                               ; preds = %66, %52
  br label %69

69:                                               ; preds = %68, %38
  br label %70

70:                                               ; preds = %69, %11
  %71 = load %struct.varlena*, %struct.varlena** %4, align 8
  store %struct.varlena* %71, %struct.varlena** %2, align 8
  br label %72

72:                                               ; preds = %70, %35
  %73 = load %struct.varlena*, %struct.varlena** %2, align 8
  ret %struct.varlena* %73
}

declare dso_local i64 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena*) #1

declare dso_local %struct.varlena* @toast_fetch_datum(%struct.varlena*) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_INDIRECT(%struct.varlena*) #1

declare dso_local i32 @VARATT_EXTERNAL_GET_POINTER(i64, %struct.varlena*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(%struct.varlena*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @VARSIZE_ANY(%struct.varlena*) #1

declare dso_local i32 @memcpy(%struct.varlena*, %struct.varlena*, i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(%struct.varlena*) #1

declare dso_local i32* @DatumGetEOHP(i32) #1

declare dso_local i32 @PointerGetDatum(%struct.varlena*) #1

declare dso_local i32 @EOH_get_flat_size(i32*) #1

declare dso_local i32 @EOH_flatten_into(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

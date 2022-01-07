; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_id_and_span_v.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_id_and_span_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@SPIFFS_OP_T_OBJ_LU2 = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_FINAL = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_DELET = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_USED = common dso_local global i32 0, align 4
@SPIFFS_OBJ_ID_IX_FLAG = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_IXDELE = common dso_local global i32 0, align 4
@SPIFFS_OK = common dso_local global i32 0, align 4
@SPIFFS_VIS_COUNTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i8*, i8*)* @spiffs_obj_lu_find_id_and_span_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spiffs_obj_lu_find_id_and_span_v(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(i32* %17, i32 %18, i32 %19)
  store i64 %20, i64* %16, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @SPIFFS_OP_T_OBJ_LU2, align 4
  %23 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** %8, align 8
  %26 = load i64, i64* %16, align 8
  %27 = call i32 @SPIFFS_PAGE_TO_PADDR(i32* %25, i64 %26)
  %28 = bitcast %struct.TYPE_2__* %15 to i32*
  %29 = call i32 @_spiffs_rd(i32* %21, i32 0, i32 %24, i32 %27, i32 24, i32* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @SPIFFS_CHECK_RES(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SPIFFS_PH_FLAG_FINAL, align 4
  %47 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SPIFFS_PH_FLAG_USED, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %45, %50
  %52 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @SPIFFS_OBJ_ID_IX_FLAG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %65, %59, %54
  %70 = load i8*, i8** %12, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %12, align 8
  %74 = bitcast i8* %73 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %16, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %69
  %79 = load i32, i32* @SPIFFS_OK, align 4
  store i32 %79, i32* %7, align 4
  br label %82

80:                                               ; preds = %72, %65, %43, %36, %6
  %81 = load i32, i32* @SPIFFS_VIS_COUNTINUE, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i64 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(i32*, i32, i32) #1

declare dso_local i32 @_spiffs_rd(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SPIFFS_PAGE_TO_PADDR(i32*, i64) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

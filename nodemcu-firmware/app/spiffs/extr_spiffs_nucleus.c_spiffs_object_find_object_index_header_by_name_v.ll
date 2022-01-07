; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_object_find_object_index_header_by_name_v.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_object_find_object_index_header_by_name_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@SPIFFS_OBJ_ID_FREE = common dso_local global i32 0, align 4
@SPIFFS_OBJ_ID_DELETED = common dso_local global i32 0, align 4
@SPIFFS_OBJ_ID_IX_FLAG = common dso_local global i32 0, align 4
@SPIFFS_VIS_COUNTINUE = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_LU2 = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_DELET = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_FINAL = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_IXDELE = common dso_local global i32 0, align 4
@SPIFFS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i8*, i8*)* @spiffs_object_find_object_index_header_by_name_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spiffs_object_find_object_index_header_by_name_v(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SPIFFS_OBJ_ID_FREE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SPIFFS_OBJ_ID_DELETED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SPIFFS_OBJ_ID_IX_FLAG, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %25, %6
  %35 = load i32, i32* @SPIFFS_VIS_COUNTINUE, align 4
  store i32 %35, i32* %7, align 4
  br label %78

36:                                               ; preds = %29
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @SPIFFS_OP_T_OBJ_LU2, align 4
  %39 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @SPIFFS_PAGE_TO_PADDR(i32* %41, i32 %42)
  %44 = bitcast %struct.TYPE_4__* %15 to i32*
  %45 = call i32 @_spiffs_rd(i32* %37, i32 %40, i32 0, i32 %43, i32 24, i32* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @SPIFFS_CHECK_RES(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %57 = load i32, i32* @SPIFFS_PH_FLAG_FINAL, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %55, %60
  %62 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %63 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %64 = or i32 %62, %63
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %52
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i64 @strcmp(i8* %67, i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @SPIFFS_OK, align 4
  store i32 %74, i32* %7, align 4
  br label %78

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %52, %36
  %77 = load i32, i32* @SPIFFS_VIS_COUNTINUE, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %73, %34
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(i32*, i32, i32) #1

declare dso_local i32 @_spiffs_rd(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SPIFFS_PAGE_TO_PADDR(i32*, i32) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

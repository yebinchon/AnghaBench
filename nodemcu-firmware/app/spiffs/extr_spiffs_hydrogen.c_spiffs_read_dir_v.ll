; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_hydrogen.c_spiffs_read_dir_v.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_hydrogen.c_spiffs_read_dir_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.spiffs_dirent = type { i32, i64, i32, i32, i32, i64 }

@SPIFFS_OBJ_ID_FREE = common dso_local global i32 0, align 4
@SPIFFS_OBJ_ID_DELETED = common dso_local global i32 0, align 4
@SPIFFS_OBJ_ID_IX_FLAG = common dso_local global i32 0, align 4
@SPIFFS_VIS_COUNTINUE = common dso_local global i64 0, align 8
@SPIFFS_OP_T_OBJ_LU2 = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_PH_FLAG_DELET = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_FINAL = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_IXDELE = common dso_local global i32 0, align 4
@SPIFFS_UNDEFINED_LEN = common dso_local global i64 0, align 8
@SPIFFS_OBJ_META_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32, i8*, i8*)* @spiffs_read_dir_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spiffs_read_dir_v(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.spiffs_dirent*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SPIFFS_OBJ_ID_FREE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SPIFFS_OBJ_ID_DELETED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SPIFFS_OBJ_ID_IX_FLAG, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %22, %6
  %32 = load i64, i64* @SPIFFS_VIS_COUNTINUE, align 8
  store i64 %32, i64* %7, align 8
  br label %112

33:                                               ; preds = %26
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(i32* %34, i32 %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @SPIFFS_OP_T_OBJ_LU2, align 4
  %40 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @SPIFFS_PAGE_TO_PADDR(i32* %42, i32 %43)
  %45 = bitcast %struct.TYPE_4__* %15 to i32*
  %46 = call i64 @_spiffs_rd(i32* %38, i32 %41, i32 0, i32 %44, i32 40, i32* %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @SPIFFS_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i64, i64* %14, align 8
  store i64 %51, i64* %7, align 8
  br label %112

52:                                               ; preds = %33
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SPIFFS_OBJ_ID_IX_FLAG, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %110

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %110

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %67 = load i32, i32* @SPIFFS_PH_FLAG_FINAL, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %65, %70
  %72 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %73 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %74 = or i32 %72, %73
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %110

76:                                               ; preds = %62
  %77 = load i8*, i8** %13, align 8
  %78 = bitcast i8* %77 to %struct.spiffs_dirent*
  store %struct.spiffs_dirent* %78, %struct.spiffs_dirent** %17, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.spiffs_dirent*, %struct.spiffs_dirent** %17, align 8
  %81 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.spiffs_dirent*, %struct.spiffs_dirent** %17, align 8
  %83 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @strcpy(i8* %85, i8* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.spiffs_dirent*, %struct.spiffs_dirent** %17, align 8
  %93 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SPIFFS_UNDEFINED_LEN, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %76
  br label %102

99:                                               ; preds = %76
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  br label %102

102:                                              ; preds = %99, %98
  %103 = phi i64 [ 0, %98 ], [ %101, %99 ]
  %104 = load %struct.spiffs_dirent*, %struct.spiffs_dirent** %17, align 8
  %105 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.spiffs_dirent*, %struct.spiffs_dirent** %17, align 8
  %108 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %109, i64* %7, align 8
  br label %112

110:                                              ; preds = %62, %57, %52
  %111 = load i64, i64* @SPIFFS_VIS_COUNTINUE, align 8
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %110, %102, %50, %31
  %113 = load i64, i64* %7, align 8
  ret i64 %113
}

declare dso_local i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(i32*, i32, i32) #1

declare dso_local i64 @_spiffs_rd(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SPIFFS_PAGE_TO_PADDR(i32*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_check_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmt_entry = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"texture rendering\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"StretchRect\00", align 1
@fmt_table = common dso_local global %struct.fmt_entry* null, align 8
@D3DADAPTER_DEFAULT = common dso_local global i32 0, align 4
@DEVTYPE = common dso_local global i32 0, align 4
@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@D3DUSAGE_QUERY_FILTER = common dso_local global i32 0, align 4
@D3DRTYPE_TEXTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Rejected image format (%s): %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Accepted image format (%s): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32)* @check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_format(%struct.TYPE_5__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fmt_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  store i8* %14, i8** %8, align 8
  %15 = load %struct.fmt_entry*, %struct.fmt_entry** @fmt_table, align 8
  %16 = getelementptr inbounds %struct.fmt_entry, %struct.fmt_entry* %15, i64 0
  store %struct.fmt_entry* %16, %struct.fmt_entry** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @IMGFMT_IS_ANY_RND(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %96

24:                                               ; preds = %19, %3
  br label %25

25:                                               ; preds = %92, %24
  %26 = load %struct.fmt_entry*, %struct.fmt_entry** %9, align 8
  %27 = getelementptr inbounds %struct.fmt_entry, %struct.fmt_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %25
  %31 = load %struct.fmt_entry*, %struct.fmt_entry** %9, align 8
  %32 = getelementptr inbounds %struct.fmt_entry, %struct.fmt_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @D3DADAPTER_DEFAULT, align 4
  %44 = load i32, i32* @DEVTYPE, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %49 = load i32, i32* @D3DUSAGE_QUERY_FILTER, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @D3DRTYPE_TEXTURE, align 4
  %52 = load %struct.fmt_entry*, %struct.fmt_entry** %9, align 8
  %53 = getelementptr inbounds %struct.fmt_entry, %struct.fmt_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @IDirect3D9_CheckDeviceFormat(i32 %42, i32 %43, i32 %44, i32 %47, i32 %50, i32 %51, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %69

56:                                               ; preds = %36
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @D3DADAPTER_DEFAULT, align 4
  %61 = load i32, i32* @DEVTYPE, align 4
  %62 = load %struct.fmt_entry*, %struct.fmt_entry** %9, align 8
  %63 = getelementptr inbounds %struct.fmt_entry, %struct.fmt_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IDirect3D9_CheckDeviceFormatConversion(i32 %59, i32 %60, i32 %61, i32 %64, i32 %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %56, %39
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @FAILED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.fmt_entry*, %struct.fmt_entry** %9, align 8
  %77 = getelementptr inbounds %struct.fmt_entry, %struct.fmt_entry* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @vo_format_name(i64 %78)
  %80 = call i32 @MP_VERBOSE(%struct.TYPE_5__* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %79)
  store i32 0, i32* %4, align 4
  br label %96

81:                                               ; preds = %69
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.fmt_entry*, %struct.fmt_entry** %9, align 8
  %85 = getelementptr inbounds %struct.fmt_entry, %struct.fmt_entry* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @vo_format_name(i64 %86)
  %88 = call i32 @MP_DBG(%struct.TYPE_5__* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %83, i32 %87)
  %89 = load %struct.fmt_entry*, %struct.fmt_entry** %9, align 8
  %90 = getelementptr inbounds %struct.fmt_entry, %struct.fmt_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %4, align 4
  br label %96

92:                                               ; preds = %30
  %93 = load %struct.fmt_entry*, %struct.fmt_entry** %9, align 8
  %94 = getelementptr inbounds %struct.fmt_entry, %struct.fmt_entry* %93, i32 1
  store %struct.fmt_entry* %94, %struct.fmt_entry** %9, align 8
  br label %25

95:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %81, %73, %23
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @IMGFMT_IS_ANY_RND(i64) #1

declare dso_local i32 @IDirect3D9_CheckDeviceFormat(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IDirect3D9_CheckDeviceFormatConversion(i32, i32, i32, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_5__*, i8*, i8*, i32) #1

declare dso_local i32 @vo_format_name(i64) #1

declare dso_local i32 @MP_DBG(%struct.TYPE_5__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

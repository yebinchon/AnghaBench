; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_capture_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xshm_data = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to open X display !\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to update geometry !\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to attach shm !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xshm_data*)* @xshm_capture_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xshm_capture_start(%struct.xshm_data* %0) #0 {
  %2 = alloca %struct.xshm_data*, align 8
  %3 = alloca i8*, align 8
  store %struct.xshm_data* %0, %struct.xshm_data** %2, align 8
  %4 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %5 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %4, i32 0, i32 10
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %10 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %17 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  br label %20

19:                                               ; preds = %8, %1
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i8* [ %18, %15 ], [ null, %19 ]
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @xcb_connect(i8* %22, i32* null)
  %24 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %25 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %27 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %32 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @xcb_connection_has_error(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %20
  %37 = load i32, i32* @LOG_ERROR, align 4
  %38 = call i32 @blog(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %112

39:                                               ; preds = %30
  %40 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %41 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xshm_check_extensions(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %112

46:                                               ; preds = %39
  %47 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %48 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @randr_is_active(i32 %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %55 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %57 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @xinerama_is_active(i32 %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %64 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %66 = call i64 @xshm_update_geometry(%struct.xshm_data* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %46
  %69 = load i32, i32* @LOG_ERROR, align 4
  %70 = call i32 @blog(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %112

71:                                               ; preds = %46
  %72 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %73 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %76 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %79 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @xshm_xcb_attach(i32 %74, i32 %77, i32 %80)
  %82 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %83 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %85 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %71
  %89 = load i32, i32* @LOG_ERROR, align 4
  %90 = call i32 @blog(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %112

91:                                               ; preds = %71
  %92 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %93 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @xcb_xcursor_init(i32 %94)
  %96 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %97 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %99 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %102 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %105 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @xcb_xcursor_offset(i32 %100, i32 %103, i32 %106)
  %108 = call i32 (...) @obs_enter_graphics()
  %109 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %110 = call i32 @xshm_resize_texture(%struct.xshm_data* %109)
  %111 = call i32 (...) @obs_leave_graphics()
  br label %115

112:                                              ; preds = %88, %68, %45, %36
  %113 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %114 = call i32 @xshm_capture_stop(%struct.xshm_data* %113)
  br label %115

115:                                              ; preds = %112, %91
  ret void
}

declare dso_local i32 @xcb_connect(i8*, i32*) #1

declare dso_local i64 @xcb_connection_has_error(i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @xshm_check_extensions(i32) #1

declare dso_local i64 @randr_is_active(i32) #1

declare dso_local i64 @xinerama_is_active(i32) #1

declare dso_local i64 @xshm_update_geometry(%struct.xshm_data*) #1

declare dso_local i32 @xshm_xcb_attach(i32, i32, i32) #1

declare dso_local i32 @xcb_xcursor_init(i32) #1

declare dso_local i32 @xcb_xcursor_offset(i32, i32, i32) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @xshm_resize_texture(%struct.xshm_data*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @xshm_capture_stop(%struct.xshm_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

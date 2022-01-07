; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_set_text.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_set_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, i32, %struct.osd_object** }
%struct.osd_object = type { i32, i32 }

@OSDTYPE_OSD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_set_text(%struct.osd_state* %0, i8* %1) #0 {
  %3 = alloca %struct.osd_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.osd_object*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %7 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %6, i32 0, i32 1
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  %9 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %10 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %9, i32 0, i32 2
  %11 = load %struct.osd_object**, %struct.osd_object*** %10, align 8
  %12 = load i64, i64* @OSDTYPE_OSD, align 8
  %13 = getelementptr inbounds %struct.osd_object*, %struct.osd_object** %11, i64 %12
  %14 = load %struct.osd_object*, %struct.osd_object** %13, align 8
  store %struct.osd_object* %14, %struct.osd_object** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %18

18:                                               ; preds = %17, %2
  %19 = load %struct.osd_object*, %struct.osd_object** %5, align 8
  %20 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load %struct.osd_object*, %struct.osd_object** %5, align 8
  %27 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @talloc_free(i32 %28)
  %30 = load %struct.osd_object*, %struct.osd_object** %5, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @talloc_strdup(%struct.osd_object* %30, i8* %31)
  %33 = load %struct.osd_object*, %struct.osd_object** %5, align 8
  %34 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.osd_object*, %struct.osd_object** %5, align 8
  %36 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %38 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %25, %18
  %40 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %41 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %40, i32 0, i32 1
  %42 = call i32 @pthread_mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @talloc_strdup(%struct.osd_object*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

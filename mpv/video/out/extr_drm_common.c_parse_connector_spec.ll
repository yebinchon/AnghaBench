; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_parse_connector_spec.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_parse_connector_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_log*, i8*, i32*, i8**)* @parse_connector_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_connector_spec(%struct.mp_log* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store %struct.mp_log* %0, %struct.mp_log** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8**, i8*** %8, align 8
  store i8* null, i8** %14, align 8
  br label %35

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 46)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @atoi(i8* %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i8* @talloc_strdup(%struct.mp_log* %24, i8* %26)
  %28 = load i8**, i8*** %8, align 8
  store i8* %27, i8** %28, align 8
  br label %35

29:                                               ; preds = %15
  %30 = load i32*, i32** %7, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @talloc_strdup(%struct.mp_log* %31, i8* %32)
  %34 = load i8**, i8*** %8, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %12, %29, %20
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @talloc_strdup(%struct.mp_log*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

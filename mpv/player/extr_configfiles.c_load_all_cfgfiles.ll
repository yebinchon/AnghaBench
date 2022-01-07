; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_configfiles.c_load_all_cfgfiles.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_configfiles.c_load_all_cfgfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, i8*, i8*)* @load_all_cfgfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_all_cfgfiles(%struct.MPContext* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i8** @mp_find_all_config_files(i32* null, i32 %11, i8* %12)
  store i8** %13, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %37, %3
  %15 = load i8**, i8*** %7, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i8**, i8*** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %17, %14
  %25 = phi i1 [ false, %14 ], [ %23, %17 ]
  br i1 %25, label %26, label %40

26:                                               ; preds = %24
  %27 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8**, i8*** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @m_config_parse_config_file(i32 %29, i8* %34, i8* %35, i32 0)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %14

40:                                               ; preds = %24
  %41 = load i8**, i8*** %7, align 8
  %42 = call i32 @talloc_free(i8** %41)
  ret void
}

declare dso_local i8** @mp_find_all_config_files(i32*, i32, i8*) #1

declare dso_local i32 @m_config_parse_config_file(i32, i8*, i8*, i32) #1

declare dso_local i32 @talloc_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

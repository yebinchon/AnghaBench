; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_path.c_mp_find_user_config_file.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_path.c_mp_find_user_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32 }

@config_dirs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"config path: '%s' -> '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_find_user_config_file(i8* %0, %struct.mpv_global* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mpv_global*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.mpv_global* %1, %struct.mpv_global** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i8* @talloc_new(i32* null)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.mpv_global*, %struct.mpv_global** %5, align 8
  %12 = load i32*, i32** @config_dirs, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @mp_get_platform_path(i8* %10, %struct.mpv_global* %11, i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @mp_path_join(i8* %20, i8* %21, i8* %22)
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @talloc_free(i8* %25)
  %27 = load %struct.mpv_global*, %struct.mpv_global** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %33 ]
  %36 = call i32 @MP_DBG(%struct.mpv_global* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %35)
  %37 = load i8*, i8** %8, align 8
  ret i8* %37
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i64 @mp_get_platform_path(i8*, %struct.mpv_global*, i32) #1

declare dso_local i8* @mp_path_join(i8*, i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @MP_DBG(%struct.mpv_global*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

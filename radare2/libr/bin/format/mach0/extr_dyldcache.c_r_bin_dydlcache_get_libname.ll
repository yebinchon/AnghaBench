; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mach0/extr_dyldcache.c_r_bin_dydlcache_get_libname.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mach0/extr_dyldcache.c_r_bin_dydlcache_get_libname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_dyldcache_lib_t = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r_bin_dydlcache_get_libname(%struct.r_bin_dyldcache_lib_t* %0, i8** %1) #0 {
  %3 = alloca %struct.r_bin_dyldcache_lib_t*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.r_bin_dyldcache_lib_t* %0, %struct.r_bin_dyldcache_lib_t** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load %struct.r_bin_dyldcache_lib_t*, %struct.r_bin_dyldcache_lib_t** %3, align 8
  %9 = getelementptr inbounds %struct.r_bin_dyldcache_lib_t, %struct.r_bin_dyldcache_lib_t* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.r_bin_dyldcache_lib_t*, %struct.r_bin_dyldcache_lib_t** %3, align 8
  %12 = getelementptr inbounds %struct.r_bin_dyldcache_lib_t, %struct.r_bin_dyldcache_lib_t* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.r_bin_dyldcache_lib_t*, %struct.r_bin_dyldcache_lib_t** %3, align 8
  %15 = getelementptr inbounds %struct.r_bin_dyldcache_lib_t, %struct.r_bin_dyldcache_lib_t* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %32, %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = icmp ult i8* %19, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %36

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %6, align 8
  br label %18

36:                                               ; preds = %31, %18
  %37 = load i8*, i8** %6, align 8
  %38 = load i8**, i8*** %4, align 8
  store i8* %37, i8** %38, align 8
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

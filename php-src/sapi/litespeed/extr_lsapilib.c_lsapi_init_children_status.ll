; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_init_children_status.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_init_children_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32* }

@g_prefork_server = common dso_local global %struct.TYPE_2__* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Anonymous mmap() failed\00", align 1
@s_busy_workers = common dso_local global i32* null, align 8
@s_accepting_workers = common dso_local global i32* null, align 8
@s_global_counter = common dso_local global i32* null, align 8
@s_avail_pages = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lsapi_init_children_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsapi_init_children_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 4096, i32* %2, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = mul i64 %14, 2
  %16 = add i64 %15, 12
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 4095
  %20 = sdiv i32 %19, 4096
  %21 = mul nsw i32 %20, 4096
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @PROT_WRITE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MAP_ANON, align 4
  %27 = load i32, i32* @MAP_SHARED, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @mmap(i32* null, i32 %22, i32 %25, i32 %28, i32 -1, i32 0)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** @MAP_FAILED, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %0
  %35 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %65

36:                                               ; preds = %0
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @memset(i8* %37, i32 0, i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** @s_busy_workers, align 8
  %58 = load i32*, i32** @s_busy_workers, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32* %59, i32** @s_accepting_workers, align 8
  %60 = load i32*, i32** @s_accepting_workers, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32* %61, i32** @s_global_counter, align 8
  %62 = load i32*, i32** @s_global_counter, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = bitcast i32* %63 to i64*
  store i64* %64, i64** @s_avail_pages, align 8
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %36, %34
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

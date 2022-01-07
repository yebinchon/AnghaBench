; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_winedbg.c_runcmd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_winedbg.c_runcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Wine-dbg>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @runcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @runcmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = bitcast [4096 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 4096, i1 false)
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @gs, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @r_socket_printf(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %10, %1
  store i32 1000000, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %15 = load i32, i32* @gs, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @r_socket_block_time(i32 %15, i32 1, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %14, %34
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 4096)
  %21 = load i32, i32* @gs, align 4
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %23 = bitcast i8* %22 to i32*
  %24 = call i32 @r_socket_read(i32 %21, i32* %23, i32 4095)
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i8*, i8** %6, align 8
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %33 = call i8* @r_str_append(i8* %31, i8* %32)
  ret i8* %33

34:                                               ; preds = %18
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %37 = call i8* @r_str_append(i8* %35, i8* %36)
  store i8* %37, i8** %5, align 8
  br label %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @r_socket_printf(i32, i8*, i8*) #2

declare dso_local i32 @r_socket_block_time(i32, i32, i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @r_socket_read(i32, i32*, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @r_str_append(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

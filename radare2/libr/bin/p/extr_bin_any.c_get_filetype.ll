; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_any.c_get_filetype.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_any.c_get_filetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R2_SDB_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @get_filetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_filetype(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [4096 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = bitcast [4096 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16384, i1 false)
  store i8* null, i8** %5, align 8
  %9 = call i32* @r_magic_new(i32 0)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %32

13:                                               ; preds = %1
  store i8* null, i8** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @R2_SDB_MAGIC, align 4
  %16 = call i32 @r_magic_load(i32* %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds [4096 x i32], [4096 x i32]* %4, i64 0, i64 0
  %19 = call i32 @r_buf_read_at(i32* %17, i32 0, i32* %18, i32 16384)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds [4096 x i32], [4096 x i32]* %4, i64 0, i64 0
  %22 = call i8* @r_magic_buffer(i32* %20, i32* %21, i32 16384)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @r_magic_free(i32* %29)
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %28, %12
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @r_magic_new(i32) #2

declare dso_local i32 @r_magic_load(i32*, i32) #2

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #2

declare dso_local i8* @r_magic_buffer(i32*, i32*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @r_magic_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_pe.c_create.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_pe.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"MZ\00\00\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PE\00\00\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\08\00\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Warning: DATA section not support for PE yet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i8*, i32, i32*)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 4194304, i32* %19, align 4
  %21 = call i32* (...) @r_buf_new()
  store i32* %21, i32** %20, align 8
  %22 = load i32*, i32** %20, align 8
  %23 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %24 = load i32*, i32** %20, align 8
  %25 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %26 = load i32*, i32** %20, align 8
  %27 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %26, i32 332)
  %28 = load i32*, i32** %20, align 8
  %29 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %28, i32 1)
  %30 = load i32*, i32** %20, align 8
  %31 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %30, i32 0)
  %32 = load i32*, i32** %20, align 8
  %33 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %32, i32 0)
  %34 = load i32*, i32** %20, align 8
  %35 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %34, i32 0)
  %36 = load i32*, i32** %20, align 8
  %37 = call i32 @r_buf_size(i32* %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32*, i32** %20, align 8
  %39 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %38, i32 -1)
  %40 = load i32*, i32** %20, align 8
  %41 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %40, i32 259)
  %42 = load i32*, i32** %20, align 8
  %43 = call i32 @r_buf_size(i32* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32*, i32** %20, align 8
  %45 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %44, i32 267)
  %46 = load i32*, i32** %20, align 8
  %47 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %48 = load i32*, i32** %20, align 8
  %49 = call i32 @r_buf_size(i32* %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %18, align 4
  %53 = load i32*, i32** %20, align 8
  %54 = load i32, i32* %17, align 4
  %55 = bitcast i32* %18 to i8*
  %56 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %53, i32 %54, i8* %55, i32 2)
  store i32 124, i32* %14, align 4
  store i32 124, i32* %13, align 4
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @R_ROUND(i32 %58, i32 4)
  %60 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %57, i32 %59)
  %61 = load i32*, i32** %20, align 8
  %62 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %61, i32 0)
  %63 = load i32*, i32** %20, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %63, i32 %64)
  %66 = load i32*, i32** %20, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %66, i32 %67)
  %69 = load i32*, i32** %20, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %69, i32 %70)
  %72 = load i32*, i32** %20, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %72, i32 %73)
  %75 = load i32*, i32** %20, align 8
  %76 = load i32, i32* %19, align 4
  %77 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %75, i32 %76)
  %78 = load i32*, i32** %20, align 8
  %79 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %78, i32 4)
  %80 = load i32*, i32** %20, align 8
  %81 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %80, i32 4)
  %82 = load i32*, i32** %20, align 8
  %83 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %82, i32 4)
  %84 = load i32*, i32** %20, align 8
  %85 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %84, i32 0)
  %86 = load i32*, i32** %20, align 8
  %87 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %86, i32 0)
  %88 = load i32*, i32** %20, align 8
  %89 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %88, i32 0)
  %90 = load i32*, i32** %20, align 8
  %91 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %90, i32 4)
  %92 = load i32*, i32** %20, align 8
  %93 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %92, i32 0)
  %94 = load i32*, i32** %20, align 8
  %95 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %94, i32 0)
  %96 = load i32*, i32** %20, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @R_ROUND(i32 %97, i32 4)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @R_ROUND(i32 %99, i32 4)
  %101 = add nsw i32 %98, %100
  %102 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %96, i32 %101)
  %103 = load i32*, i32** %20, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @R_ROUND(i32 %104, i32 4)
  %106 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %103, i32 %105)
  %107 = load i32*, i32** %20, align 8
  %108 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %107, i32 0)
  %109 = load i32*, i32** %20, align 8
  %110 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %109, i32 2)
  %111 = load i32*, i32** %20, align 8
  %112 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %111, i32 1024)
  %113 = load i32*, i32** %20, align 8
  %114 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %113, i32 1048576)
  %115 = load i32*, i32** %20, align 8
  %116 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %115, i32 4096)
  %117 = load i32*, i32** %20, align 8
  %118 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %117, i32 1048576)
  %119 = load i32*, i32** %20, align 8
  %120 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %119, i32 4096)
  %121 = load i32*, i32** %20, align 8
  %122 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %121, i32 0)
  %123 = load i32*, i32** %20, align 8
  %124 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %123, i32 0)
  %125 = load i32*, i32** %20, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %125, i8* %126, i32 %127)
  %129 = load i8*, i8** %10, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %6
  %132 = load i32, i32* %11, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = call i32 @eprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i32*, i32** %20, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %136, i8* %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %131, %6
  %141 = load i32*, i32** %20, align 8
  ret i32* %141
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_buf_append_bytes(...) #1

declare dso_local i32 @r_buf_append_ut16(...) #1

declare dso_local i32 @r_buf_append_ut32(...) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_write_at(...) #1

declare dso_local i32 @R_ROUND(i32, i32) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

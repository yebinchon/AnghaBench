; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_elf64.c_create.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_elf64.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"\7FELF\02\01\01\00\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Warning: DATA section not support for ELF yet\0A\00", align 1
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 4194304, i32* %28, align 4
  %30 = call i32* (...) @r_buf_new()
  store i32* %30, i32** %29, align 8
  %31 = load i32*, i32** %29, align 8
  %32 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %33 = load i32*, i32** %29, align 8
  %34 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %33, i32 8)
  %35 = load i32*, i32** %29, align 8
  %36 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %35, i32 2)
  %37 = load i32*, i32** %29, align 8
  %38 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %37, i32 62)
  %39 = load i32*, i32** %29, align 8
  %40 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %39, i32 1)
  %41 = load i32*, i32** %29, align 8
  %42 = call i32 @r_buf_size(i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %29, align 8
  %44 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %43, i32 -1)
  %45 = load i32*, i32** %29, align 8
  %46 = call i32 @r_buf_size(i32* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32*, i32** %29, align 8
  %48 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %47, i32 -1)
  %49 = load i32*, i32** %29, align 8
  %50 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %49, i32 0)
  %51 = load i32*, i32** %29, align 8
  %52 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %51, i32 0)
  %53 = load i32*, i32** %29, align 8
  %54 = call i32 @r_buf_size(i32* %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32*, i32** %29, align 8
  %56 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %55, i32 -1)
  %57 = load i32*, i32** %29, align 8
  %58 = call i32 @r_buf_size(i32* %57)
  store i32 %58, i32* %21, align 4
  %59 = load i32*, i32** %29, align 8
  %60 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %59, i32 -1)
  %61 = load i32*, i32** %29, align 8
  %62 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %61, i32 1)
  %63 = load i32*, i32** %29, align 8
  %64 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %63, i32 0)
  %65 = load i32*, i32** %29, align 8
  %66 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %65, i32 0)
  %67 = load i32*, i32** %29, align 8
  %68 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut16 to i32 (i32*, i32, ...)*)(i32* %67, i32 0)
  %69 = load i32*, i32** %29, align 8
  %70 = call i32 @r_buf_size(i32* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32*, i32** %29, align 8
  %72 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %71, i32 1)
  %73 = load i32*, i32** %29, align 8
  %74 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %73, i32 5)
  %75 = load i32*, i32** %29, align 8
  %76 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %75, i32 0)
  %77 = load i32*, i32** %29, align 8
  %78 = call i32 @r_buf_size(i32* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32*, i32** %29, align 8
  %80 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %79, i32 -1)
  %81 = load i32*, i32** %29, align 8
  %82 = call i32 @r_buf_size(i32* %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32*, i32** %29, align 8
  %84 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %83, i32 -1)
  %85 = load i32*, i32** %29, align 8
  %86 = call i32 @r_buf_size(i32* %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32*, i32** %29, align 8
  %88 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %87, i32 -1)
  %89 = load i32*, i32** %29, align 8
  %90 = call i32 @r_buf_size(i32* %89)
  store i32 %90, i32* %19, align 4
  %91 = load i32*, i32** %29, align 8
  %92 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %91, i32 -1)
  %93 = load i32*, i32** %29, align 8
  %94 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %93, i32 2097152)
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %26, align 4
  %96 = load i32*, i32** %29, align 8
  %97 = call i32 @r_buf_size(i32* %96)
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %27, align 4
  %100 = load i32*, i32** %29, align 8
  %101 = call i32 @r_buf_size(i32* %100)
  store i32 %101, i32* %24, align 4
  %102 = load i32, i32* %24, align 4
  %103 = load i32, i32* %28, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %25, align 4
  %106 = load i32, i32* %24, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %22, align 4
  %111 = load i32*, i32** %29, align 8
  %112 = load i32, i32* %13, align 4
  %113 = bitcast i32* %23 to i8*
  %114 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %111, i32 %112, i8* %113, i32 8)
  %115 = load i32*, i32** %29, align 8
  %116 = load i32, i32* %14, align 4
  %117 = bitcast i32* %25 to i8*
  %118 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %115, i32 %116, i8* %117, i32 8)
  %119 = load i32*, i32** %29, align 8
  %120 = load i32, i32* %20, align 4
  %121 = bitcast i32* %26 to i8*
  %122 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %119, i32 %120, i8* %121, i32 2)
  %123 = load i32*, i32** %29, align 8
  %124 = load i32, i32* %21, align 4
  %125 = bitcast i32* %27 to i8*
  %126 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %123, i32 %124, i8* %125, i32 2)
  %127 = load i32*, i32** %29, align 8
  %128 = load i32, i32* %18, align 4
  %129 = bitcast i32* %22 to i8*
  %130 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %127, i32 %128, i8* %129, i32 8)
  %131 = load i32*, i32** %29, align 8
  %132 = load i32, i32* %19, align 4
  %133 = bitcast i32* %22 to i8*
  %134 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %131, i32 %132, i8* %133, i32 8)
  %135 = load i32*, i32** %29, align 8
  %136 = load i32, i32* %16, align 4
  %137 = bitcast i32* %28 to i8*
  %138 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %135, i32 %136, i8* %137, i32 8)
  %139 = load i32*, i32** %29, align 8
  %140 = load i32, i32* %17, align 4
  %141 = bitcast i32* %28 to i8*
  %142 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %139, i32 %140, i8* %141, i32 8)
  %143 = load i32*, i32** %29, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %143, i8* %144, i32 %145)
  %147 = load i8*, i8** %10, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %6
  %150 = load i32, i32* %11, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = call i32 @eprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %154 = load i32*, i32** %29, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %154, i8* %155, i32 %156)
  br label %158

158:                                              ; preds = %152, %149, %6
  %159 = load i32*, i32** %29, align 8
  ret i32* %159
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_buf_append_bytes(...) #1

declare dso_local i32 @r_buf_append_nbytes(...) #1

declare dso_local i32 @r_buf_append_ut16(...) #1

declare dso_local i32 @r_buf_append_ut32(...) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_append_ut64(...) #1

declare dso_local i32 @r_buf_write_at(...) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

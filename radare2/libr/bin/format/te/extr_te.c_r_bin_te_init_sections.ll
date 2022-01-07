; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_init_sections.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_init_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_te_obj_t = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid NumberOfSections value\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"malloc (sections headers)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error: read (sections headers)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_te_obj_t*)* @r_bin_te_init_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_te_init_sections(%struct.r_bin_te_obj_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_te_obj_t*, align 8
  %4 = alloca i32, align 4
  store %struct.r_bin_te_obj_t* %0, %struct.r_bin_te_obj_t** %3, align 8
  %5 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %6 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %15 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @malloc(i32 %21)
  %23 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %24 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = icmp ne i64 %22, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %30 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %33 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @r_buf_read_at(i32 %31, i32 4, i32* %35, i32 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %26, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

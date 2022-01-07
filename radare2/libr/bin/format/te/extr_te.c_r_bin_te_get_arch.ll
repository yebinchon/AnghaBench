; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_arch.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_te_obj_t = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"m68k\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"x86\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @r_bin_te_get_arch(%struct.r_bin_te_obj_t* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.r_bin_te_obj_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.r_bin_te_obj_t* %0, %struct.r_bin_te_obj_t** %3, align 8
  %5 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %6 = icmp ne %struct.r_bin_te_obj_t* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %10 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %24 [
    i32 138, label %14
    i32 137, label %14
    i32 136, label %16
    i32 129, label %16
    i32 135, label %18
    i32 134, label %20
    i32 133, label %20
    i32 132, label %20
    i32 128, label %20
    i32 131, label %22
    i32 130, label %22
  ]

14:                                               ; preds = %8, %8
  %15 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  br label %26

16:                                               ; preds = %8, %8
  %17 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  br label %26

18:                                               ; preds = %8
  %19 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %19, i8** %4, align 8
  br label %26

20:                                               ; preds = %8, %8, %8, %8
  %21 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %21, i8** %4, align 8
  br label %26

22:                                               ; preds = %8, %8
  %23 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %23, i8** %4, align 8
  br label %26

24:                                               ; preds = %8
  %25 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16, %14
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %26, %7
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

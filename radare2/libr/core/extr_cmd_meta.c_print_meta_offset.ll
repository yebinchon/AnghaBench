; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_print_meta_offset.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_print_meta_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"file: %s\0Aline: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%c %.3x  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Cannot open '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @print_meta_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_meta_offset(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %16 = call i32 @r_bin_addr2line(i32 %13, i32 %14, i8* %15, i32 1023, i32* %5)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %2
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %31 = call i64 @r_file_exists(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i8* @r_file_slurp_line(i8* %38, i32 %41, i32 0)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 62, i32 32
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55, i8* %56)
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %45, %37
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %34

64:                                               ; preds = %34
  br label %68

65:                                               ; preds = %29
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %67 = call i32 @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %64
  br label %69

69:                                               ; preds = %68, %2
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @r_bin_addr2line(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @r_cons_printf(i8*, ...) #1

declare dso_local i64 @r_file_exists(i8*) #1

declare dso_local i8* @r_file_slurp_line(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

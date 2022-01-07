; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_show_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_show_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"%s\09Inode: %u\09Size: %llu (%llu pages)\0A\00", align 1
@page_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Modify: %s (%ld seconds ago)\0AAccess: %s (%ld seconds ago)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.stat*)* @show_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_file(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %9 = load %struct.stat*, %struct.stat** %4, align 8
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = call i64 @time(i32* null)
  store i64 %12, i64* %8, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.stat*, %struct.stat** %4, align 8
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @page_size, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %22, 1
  %24 = load i64, i64* @page_size, align 8
  %25 = udiv i64 %23, %24
  %26 = call i32 (i8*, i8*, i64, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %13, i64 %18, i64 %19, i64 %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %28 = load %struct.stat*, %struct.stat** %4, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 1
  %30 = call i32 @localtime(i64* %29)
  %31 = call i32 @strftime(i8* %27, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %33 = load %struct.stat*, %struct.stat** %4, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 2
  %35 = call i32 @localtime(i64* %34)
  %36 = call i32 @strftime(i8* %32, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.stat*, %struct.stat** %4, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.stat*, %struct.stat** %4, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i32 (i8*, i8*, i64, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %37, i64 %42, i8* %43, i64 %48)
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i64, ...) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_scan_directory_ci.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_scan_directory_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i32)* @scan_directory_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_directory_ci(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dirent*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @AllocateDir(i8* %14)
  store i32* %15, i32** %12, align 8
  br label %16

16:                                               ; preds = %53, %30, %5
  %17 = load i32*, i32** %12, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @LOG, align 4
  %20 = call %struct.dirent* @ReadDirExtended(i32* %17, i8* %18, i32 %19)
  store %struct.dirent* %20, %struct.dirent** %13, align 8
  %21 = icmp ne %struct.dirent* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load %struct.dirent*, %struct.dirent** %13, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 46
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %16

31:                                               ; preds = %22
  %32 = load %struct.dirent*, %struct.dirent** %13, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.dirent*, %struct.dirent** %13, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @pg_strncasecmp(i8* %41, i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.dirent*, %struct.dirent** %13, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @strlcpy(i8* %47, i8* %50, i32 %51)
  store i32 1, i32* %11, align 4
  br label %54

53:                                               ; preds = %38, %31
  br label %16

54:                                               ; preds = %46, %16
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @FreeDir(i32* %55)
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local i32* @AllocateDir(i8*) #1

declare dso_local %struct.dirent* @ReadDirExtended(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @FreeDir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

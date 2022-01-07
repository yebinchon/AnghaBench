; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_verify_path.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_verify_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"invalid character in path '%s'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\x\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid escape sequence in path '%s'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"/../\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"invalid parent path sequence detected in '%s'\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"only absolute path names are supported - invalid path '%s'\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"cannot stat() path '%s'\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"path '%s' is not a directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %6, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %5, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i8, i8* %5, align 1
  %15 = call i64 @isalnum(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i8, i8* %5, align 1
  %19 = call i64 @is_valid_path_symbol(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %2, align 4
  br label %70

24:                                               ; preds = %17, %13
  br label %8

25:                                               ; preds = %8
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strstr(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strstr(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  store i32 1, i32* %2, align 4
  br label %70

36:                                               ; preds = %29, %25
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  store i32 1, i32* %2, align 4
  br label %70

43:                                               ; preds = %36
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  store i32 -1, i32* %2, align 4
  br label %70

52:                                               ; preds = %43
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @stat(i8* %53, %struct.stat* %4)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %57)
  store i32 -1, i32* %2, align 4
  br label %70

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @S_IFMT, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @S_IFDIR, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %67)
  store i32 -1, i32* %2, align 4
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66, %56, %49, %40, %33, %21
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @is_valid_path_symbol(i8 signext) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

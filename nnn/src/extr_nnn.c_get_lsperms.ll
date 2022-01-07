; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_get_lsperms.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_get_lsperms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_lsperms.rwx = internal constant [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"--x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-w-\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-wx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"r--\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"r-x\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rw-\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rwx\00", align 1
@get_lsperms.bits = internal global [11 x i8] zeroinitializer, align 1
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_lsperms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_lsperms(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call signext i8 @get_fileind(i32 %3)
  store i8 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @get_lsperms.bits, i64 0, i64 0), align 1
  %5 = load i32, i32* %2, align 4
  %6 = ashr i32 %5, 6
  %7 = and i32 %6, 7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x i8*], [8 x i8*]* @get_lsperms.rwx, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @xstrlcpy(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @get_lsperms.bits, i64 0, i64 1), i8* %10, i32 4)
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 3
  %14 = and i32 %13, 7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8*], [8 x i8*]* @get_lsperms.rwx, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @xstrlcpy(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @get_lsperms.bits, i64 0, i64 4), i8* %17, i32 4)
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i8*], [8 x i8*]* @get_lsperms.rwx, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @xstrlcpy(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @get_lsperms.bits, i64 0, i64 7), i8* %23, i32 4)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @S_ISUID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 64
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 115, i32 83
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @get_lsperms.bits, i64 0, i64 3), align 1
  br label %36

36:                                               ; preds = %29, %1
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @S_ISGID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 115, i32 108
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @get_lsperms.bits, i64 0, i64 6), align 1
  br label %48

48:                                               ; preds = %41, %36
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @S_ISVTX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %2, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 116, i32 84
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @get_lsperms.bits, i64 0, i64 9), align 1
  br label %60

60:                                               ; preds = %53, %48
  ret i8* getelementptr inbounds ([11 x i8], [11 x i8]* @get_lsperms.bits, i64 0, i64 0)
}

declare dso_local signext i8 @get_fileind(i32) #1

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_create.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i32, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: out of memory error\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SMACK* @smack_create(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.SMACK*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @malloc(i32 16)
  %7 = inttoptr i64 %6 to %struct.SMACK*
  store %struct.SMACK* %7, %struct.SMACK** %5, align 8
  %8 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %9 = icmp eq %struct.SMACK* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %2
  %15 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %16 = call i32 @memset(%struct.SMACK* %15, i32 0, i32 16)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %19 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %21, 1
  %23 = call i64 @malloc(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %26 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %28 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %14
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %14
  %36 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %37 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = add nsw i32 %41, 1
  %43 = call i32 @memcpy(i8* %38, i8* %39, i32 %42)
  %44 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  ret %struct.SMACK* %44
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.SMACK*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationCacheInitFilePreInvalidate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationCacheInitFilePreInvalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@DatabasePath = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@RELCACHE_INIT_FILENAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"global/%s\00", align 1
@RelCacheInitLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationCacheInitFilePreInvalidate() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAXPGPATH, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* @MAXPGPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %11 = load i8*, i8** @DatabasePath, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = trunc i64 %5 to i32
  %15 = load i8*, i8** @DatabasePath, align 8
  %16 = load i8*, i8** @RELCACHE_INIT_FILENAME, align 8
  %17 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %7, i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  br label %18

18:                                               ; preds = %13, %0
  %19 = trunc i64 %9 to i32
  %20 = load i8*, i8** @RELCACHE_INIT_FILENAME, align 8
  %21 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %10, i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @RelCacheInitLock, align 4
  %23 = load i32, i32* @LW_EXCLUSIVE, align 4
  %24 = call i32 @LWLockAcquire(i32 %22, i32 %23)
  %25 = load i8*, i8** @DatabasePath, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @unlink_initfile(i8* %7, i32 %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @unlink_initfile(i8* %10, i32 %31)
  %33 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %33)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @LWLockAcquire(i32, i32) #2

declare dso_local i32 @unlink_initfile(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

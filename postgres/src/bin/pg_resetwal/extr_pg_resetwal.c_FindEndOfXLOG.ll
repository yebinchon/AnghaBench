; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_resetwal/extr_pg_resetwal.c_FindEndOfXLOG.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_resetwal/extr_pg_resetwal.c_FindEndOfXLOG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dirent = type { i32 }

@ControlFile = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@newXlogSegNo = common dso_local global i32 0, align 4
@XLOGDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%08X%08X%08X\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"could not read directory \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"could not close directory \22%s\22: %m\00", align 1
@WalSegSz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @FindEndOfXLOG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FindEndOfXLOG() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @UINT64CONST(i32 0)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 0), align 4
  %11 = udiv i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 0), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 0), align 4
  %14 = udiv i32 %12, %13
  store i32 %14, i32* @newXlogSegNo, align 4
  %15 = load i32, i32* @XLOGDIR, align 4
  %16 = call i32* @opendir(i32 %15)
  store i32* %16, i32** %1, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load i32, i32* @XLOGDIR, align 4
  %21 = call i32 @pg_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %0
  br label %24

24:                                               ; preds = %56, %23
  store i32 0, i32* @errno, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = call %struct.dirent* @readdir(i32* %25)
  store %struct.dirent* %26, %struct.dirent** %2, align 8
  %27 = icmp ne %struct.dirent* %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = load %struct.dirent*, %struct.dirent** %2, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IsXLogFileName(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.dirent*, %struct.dirent** %2, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IsPartialXLogFileName(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %34, %28
  %41 = load %struct.dirent*, %struct.dirent** %2, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sscanf(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %6, i32* %7)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %3, align 4
  %47 = mul i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @newXlogSegNo, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* @newXlogSegNo, align 4
  br label %55

55:                                               ; preds = %53, %40
  br label %56

56:                                               ; preds = %55, %34
  br label %24

57:                                               ; preds = %24
  %58 = load i32, i32* @errno, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @XLOGDIR, align 4
  %62 = call i32 @pg_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %57
  %65 = load i32*, i32** %1, align 8
  %66 = call i64 @closedir(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @XLOGDIR, align 4
  %70 = call i32 @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = call i32 @exit(i32 1) #3
  unreachable

72:                                               ; preds = %64
  %73 = load i32, i32* @newXlogSegNo, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 0), align 4
  %75 = mul i32 %73, %74
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 0), align 4
  %78 = add i32 %76, %77
  %79 = sub i32 %78, 1
  %80 = load i32, i32* @WalSegSz, align 4
  %81 = udiv i32 %79, %80
  store i32 %81, i32* @newXlogSegNo, align 4
  %82 = load i32, i32* @newXlogSegNo, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* @newXlogSegNo, align 4
  ret void
}

declare dso_local i32 @UINT64CONST(i32) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @pg_log_error(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @IsXLogFileName(i32) #1

declare dso_local i64 @IsPartialXLogFileName(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_SetWALSegSize.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_SetWALSegSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WalSegSz = common dso_local global i32 0, align 4
@WALFilePath = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: could not open WAL file \22%s\22: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@XLOG_BLCKSZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [109 x i8] c"%s: WAL segment size must be a power of two between 1MB and 1GB, but the WAL file header specifies %d bytes\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"could not read file \22%s\22: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"not enough data in file \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @SetWALSegSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetWALSegSize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 0, i32* %2, align 4
  %6 = load i32, i32* @WalSegSz, align 4
  %7 = icmp eq i32 %6, -1
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load i8*, i8** @WALFilePath, align 8
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = call i32 @open(i8* %10, i32 %11, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %0
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @progname, align 8
  %17 = load i8*, i8** @WALFilePath, align 8
  %18 = load i64, i64* @errno, align 8
  %19 = call i8* @strerror(i64 %18)
  %20 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i8* %19)
  store i32 0, i32* %1, align 4
  br label %75

21:                                               ; preds = %0
  store i64 0, i64* @errno, align 8
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @XLOG_BLCKSZ, align 8
  %26 = call i64 @read(i32 %22, i32 %24, i64 %25)
  %27 = load i64, i64* @XLOG_BLCKSZ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %5, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @WalSegSz, align 4
  %37 = load i32, i32* @WalSegSz, align 4
  %38 = call i64 @IsValidWalSegSize(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %46

41:                                               ; preds = %29
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** @progname, align 8
  %44 = load i32, i32* @WalSegSz, align 4
  %45 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %40
  br label %69

47:                                               ; preds = %21
  %48 = load i64, i64* @errno, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i64, i64* @debug, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** @WALFilePath, align 8
  %56 = load i64, i64* @errno, align 8
  %57 = call i8* @strerror(i64 %56)
  %58 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %57)
  br label %59

59:                                               ; preds = %53, %50
  br label %68

60:                                               ; preds = %47
  %61 = load i64, i64* @debug, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** @WALFilePath, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %60
  br label %68

68:                                               ; preds = %67, %59
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fflush(i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i32, i32* %2, align 4
  store i32 %74, i32* %1, align 4
  br label %75

75:                                               ; preds = %69, %14
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i64 @read(i32, i32, i64) #1

declare dso_local i64 @IsValidWalSegSize(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

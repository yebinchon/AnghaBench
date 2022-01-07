; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_pg_rewind.c_digestControlFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_pg_rewind.c_digestControlFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@PG_CONTROL_FILE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"unexpected control file size %d, expected %d\00", align 1
@WalSegSz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [102 x i8] c"WAL segment size must be a power of two between 1 MB and 1 GB, but the control file specifies %d byte\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"WAL segment size must be a power of two between 1 MB and 1 GB, but the control file specifies %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i64)* @digestControlFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digestControlFile(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PG_CONTROL_FILE_SIZE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i64, i64* @PG_CONTROL_FILE_SIZE, align 8
  %14 = call i32 (i8*, i32, ...) @pg_fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @memcpy(%struct.TYPE_5__* %16, i8* %17, i32 4)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @WalSegSz, align 4
  %22 = load i32, i32* @WalSegSz, align 4
  %23 = call i32 @IsValidWalSegSize(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @WalSegSz, align 4
  %27 = call i32 @ngettext(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* @WalSegSz, align 4
  %31 = call i32 (i8*, i32, ...) @pg_fatal(i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %15
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = call i32 @checkControlFile(%struct.TYPE_5__* %33)
  ret void
}

declare dso_local i32 @pg_fatal(i8*, i32, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @IsValidWalSegSize(i32) #1

declare dso_local i32 @ngettext(i8*, i8*, i32) #1

declare dso_local i32 @checkControlFile(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

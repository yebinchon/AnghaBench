; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_EncodeTimeOnly.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_EncodeTimeOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32 }

@MAX_TIME_PRECISION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EncodeTimeOnly(%struct.pg_tm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.pg_tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.pg_tm* %0, %struct.pg_tm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.pg_tm*, %struct.pg_tm** %7, align 8
  %15 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @pg_ltostr_zeropad(i8* %13, i32 %16, i32 2)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %12, align 8
  store i8 58, i8* %18, align 1
  %20 = load i8*, i8** %12, align 8
  %21 = load %struct.pg_tm*, %struct.pg_tm** %7, align 8
  %22 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @pg_ltostr_zeropad(i8* %20, i32 %23, i32 2)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  store i8 58, i8* %25, align 1
  %27 = load i8*, i8** %12, align 8
  %28 = load %struct.pg_tm*, %struct.pg_tm** %7, align 8
  %29 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MAX_TIME_PRECISION, align 4
  %33 = call i8* @AppendSeconds(i8* %27, i32 %30, i32 %31, i32 %32, i32 1)
  store i8* %33, i8** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @EncodeTimezone(i8* %37, i32 %38, i32 %39)
  store i8* %40, i8** %12, align 8
  br label %41

41:                                               ; preds = %36, %6
  %42 = load i8*, i8** %12, align 8
  store i8 0, i8* %42, align 1
  ret void
}

declare dso_local i8* @pg_ltostr_zeropad(i8*, i32, i32) #1

declare dso_local i8* @AppendSeconds(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @EncodeTimezone(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

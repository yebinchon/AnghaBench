; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_ifaddr.c_pg_sockaddr_cidr_mask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_ifaddr.c_pg_sockaddr_cidr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_4__, %struct.TYPE_3__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_sockaddr_cidr_mask(%struct.sockaddr_storage* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockaddr_in, align 8
  %11 = alloca i64, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 129
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 32, i32 128
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  br label %34

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strtol(i8* %21, i8** %9, i32 10)
  store i64 %22, i64* %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load i8*, i8** %9, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %20
  store i32 -1, i32* %4, align 4
  br label %69

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %64 [
    i32 129, label %36
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = icmp sgt i64 %40, 32
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  store i32 -1, i32* %4, align 4
  br label %69

43:                                               ; preds = %39
  %44 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr_in6*
  %45 = call i32 @memset(%struct.sockaddr_in6* %44, i32 0, i32 16)
  %46 = load i64, i64* %8, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i64, i64* %8, align 8
  %50 = trunc i64 %49 to i32
  %51 = sub nsw i32 32, %50
  %52 = zext i32 %51 to i64
  %53 = shl i64 4294967295, %52
  %54 = and i64 %53, 4294967295
  store i64 %54, i64* %11, align 8
  br label %56

55:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @pg_hton32(i64 %57)
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %62 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr_in6*
  %63 = call i32 @memcpy(%struct.sockaddr_storage* %61, %struct.sockaddr_in6* %62, i32 16)
  br label %65

64:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %69

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %68 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %64, %42, %32
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @pg_hton32(i64) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr_in6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

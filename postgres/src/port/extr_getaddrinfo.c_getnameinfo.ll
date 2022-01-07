; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_getaddrinfo.c_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_getaddrinfo.c_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, i32 }

@EAI_FAIL = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@EAI_AGAIN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAI_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@EAI_FAMILY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnameinfo(%struct.sockaddr* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %18 = icmp eq %struct.sockaddr* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %7
  %20 = load i8*, i8** %11, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %13, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %7
  %26 = load i32, i32* @EAI_FAIL, align 4
  store i32 %26, i32* %8, align 4
  br label %94

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @NI_NAMEREQD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @EAI_AGAIN, align 4
  store i32 %33, i32* %8, align 4
  br label %94

34:                                               ; preds = %27
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_INET, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load i64, i64* @AF_INET, align 8
  %45 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %46 = bitcast %struct.sockaddr* %45 to %struct.sockaddr_in*
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 1
  %48 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %49 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_INET, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 32, i32 128
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32* @pg_inet_net_ntop(i64 %44, i32* %47, i32 %54, i8* %55, i32 %56)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %60, i32* %8, align 4
  br label %94

61:                                               ; preds = %43
  br label %64

62:                                               ; preds = %37
  %63 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %63, i32* %8, align 4
  br label %94

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i8*, i8** %13, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  store i32 -1, i32* %16, align 4
  %69 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %70 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AF_INET, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %78 = bitcast %struct.sockaddr* %77 to %struct.sockaddr_in*
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pg_ntoh16(i32 %80)
  %82 = call i32 @snprintf(i8* %75, i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %74, %68
  %84 = load i32, i32* %16, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86, %83
  %91 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %91, i32* %8, align 4
  br label %94

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %65
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %90, %62, %59, %32, %25
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32* @pg_inet_net_ntop(i64, i32*, i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @pg_ntoh16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

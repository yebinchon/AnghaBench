; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/netstat/extr_netstat.c_GetIpHostName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/netstat/extr_netstat.c_GetIpHostName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bDoShowNumbers = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetIpHostName(i64 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @htonl(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* @bDoShowNumbers, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %10, align 4
  %18 = ashr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = load i32, i32* %10, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 255
  %28 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %27)
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %5, align 8
  br label %98

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 24
  %42 = and i32 %41, 255
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = load i32, i32* %10, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 255
  %51 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %50)
  br label %61

52:                                               ; preds = %35
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @gethostname(i8* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = call i32 (...) @WSAGetLastError()
  %59 = call i32 @DoFormatMessage(i32 %58)
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %38
  br label %96

62:                                               ; preds = %30
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 16777343
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @gethostname(i8* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = call i32 (...) @WSAGetLastError()
  %75 = call i32 @DoFormatMessage(i32 %74)
  br label %76

76:                                               ; preds = %73, %68
  br label %80

77:                                               ; preds = %65
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @strncpy(i8* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 10)
  br label %80

80:                                               ; preds = %77, %76
  br label %95

81:                                               ; preds = %62
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = ashr i32 %83, 24
  %85 = and i32 %84, 255
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = load i32, i32* %10, align 4
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 255
  %94 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %81, %80
  br label %96

96:                                               ; preds = %95, %61
  %97 = load i8*, i8** %8, align 8
  store i8* %97, i8** %5, align 8
  br label %98

98:                                               ; preds = %96, %15
  %99 = load i8*, i8** %5, align 8
  ret i8* %99
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @gethostname(i8*, i32) #1

declare dso_local i32 @DoFormatMessage(i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

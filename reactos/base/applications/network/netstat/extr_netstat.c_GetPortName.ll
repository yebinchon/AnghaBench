; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/netstat/extr_netstat.c_GetPortName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/netstat/extr_netstat.c_GetPortName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@bDoShowNumbers = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetPortName(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.servent*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* @bDoShowNumbers, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @htons(i32 %16)
  %18 = call i32 @sprintf(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %5, align 8
  br label %39

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.servent* @getservbyport(i64 %21, i32 %22)
  store %struct.servent* %23, %struct.servent** %10, align 8
  %24 = icmp ne %struct.servent* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.servent*, %struct.servent** %10, align 8
  %28 = getelementptr inbounds %struct.servent, %struct.servent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32* %26, i32 %29)
  br label %37

31:                                               ; preds = %20
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @htons(i32 %34)
  %36 = call i32 @sprintf(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %5, align 8
  br label %39

39:                                               ; preds = %37, %13
  %40 = load i32*, i32** %5, align 8
  ret i32* %40
}

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.servent* @getservbyport(i64, i32) #1

declare dso_local i32 @strcpy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_gethostbyname.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_gethostbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"gethostbyname: %s\0A\00", align 1
@proxychains_resolver = common dso_local global i64 0, align 8
@ghbndata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @gethostbyname(i8* %0) #0 {
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = call i32 (...) @INIT()
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @PDEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i64, i64* @proxychains_resolver, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.hostent* @proxy_gethostbyname(i8* %10, i32* @ghbndata)
  store %struct.hostent* %11, %struct.hostent** %2, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.hostent* @true_gethostbyname(i8* %13)
  store %struct.hostent* %14, %struct.hostent** %2, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.hostent*, %struct.hostent** %2, align 8
  ret %struct.hostent* %16
}

declare dso_local i32 @INIT(...) #1

declare dso_local i32 @PDEBUG(i8*, i8*) #1

declare dso_local %struct.hostent* @proxy_gethostbyname(i8*, i32*) #1

declare dso_local %struct.hostent* @true_gethostbyname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

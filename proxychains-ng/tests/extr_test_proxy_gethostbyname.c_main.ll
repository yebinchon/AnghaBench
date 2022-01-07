; ModuleID = '/home/carl/AnghaBench/proxychains-ng/tests/extr_test_proxy_gethostbyname.c_main.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/tests/extr_test_proxy_gethostbyname.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.gethostbyname_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.gethostbyname_data, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call %struct.hostent* @proxy_gethostbyname(i8* %14, %struct.gethostbyname_data* %7)
  store %struct.hostent* %15, %struct.hostent** %6, align 8
  %16 = load %struct.hostent*, %struct.hostent** %6, align 8
  %17 = icmp ne %struct.hostent* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.hostent*, %struct.hostent** %6, align 8
  %20 = call i32 @printhostent(%struct.hostent* %19)
  br label %21

21:                                               ; preds = %18, %11
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.hostent* @proxy_gethostbyname(i8*, %struct.gethostbyname_data*) #1

declare dso_local i32 @printhostent(%struct.hostent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

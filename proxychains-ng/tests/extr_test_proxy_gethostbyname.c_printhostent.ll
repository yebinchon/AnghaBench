; ModuleID = '/home/carl/AnghaBench/proxychains-ng/tests/extr_test_proxy_gethostbyname.c_printhostent.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/tests/extr_test_proxy_gethostbyname.c_printhostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32, i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [66 x i8] c"alias: %p, len: %d, name: %s, addrlist: %p, addrtype: %d, ip: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printhostent(%struct.hostent* %0) #0 {
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca [16 x i8], align 16
  store %struct.hostent* %0, %struct.hostent** %2, align 8
  %4 = load %struct.hostent*, %struct.hostent** %2, align 8
  %5 = getelementptr inbounds %struct.hostent, %struct.hostent* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %10 = call i32 @pc_stringfromipv4(i32 %8, i8* %9)
  %11 = load %struct.hostent*, %struct.hostent** %2, align 8
  %12 = getelementptr inbounds %struct.hostent, %struct.hostent* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hostent*, %struct.hostent** %2, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hostent*, %struct.hostent** %2, align 8
  %18 = getelementptr inbounds %struct.hostent, %struct.hostent* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.hostent*, %struct.hostent** %2, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.hostent*, %struct.hostent** %2, align 8
  %24 = getelementptr inbounds %struct.hostent, %struct.hostent* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %27 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i8* %19, i32* %22, i32 %25, i8* %26)
  ret void
}

declare dso_local i32 @pc_stringfromipv4(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i8*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

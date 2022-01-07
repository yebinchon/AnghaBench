; ModuleID = '/home/carl/AnghaBench/proxychains-ng/tests/extr_test_shm.c_main.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/tests/extr_test_shm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stringpool = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"AAAAA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca %struct.stringpool, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 @stringpool_init(%struct.stringpool* %3)
  store i64 0, i64* %5, align 8
  %7 = call i32 @ss(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i8* (%struct.stringpool*, i8*, ...) @stringpool_add(%struct.stringpool* %3, i8* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds %struct.stringpool, %struct.stringpool* %3, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 @s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %5, align 8
  %21 = getelementptr inbounds %struct.stringpool, %struct.stringpool* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 4096
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = getelementptr inbounds %struct.stringpool, %struct.stringpool* %3, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %33 = call i8* (%struct.stringpool*, i8*, ...) @stringpool_add(%struct.stringpool* %3, i8* %32, i64 4096)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds %struct.stringpool, %struct.stringpool* %3, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = icmp eq i8* %34, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 4096
  store i64 %43, i64* %5, align 8
  %44 = getelementptr inbounds %struct.stringpool, %struct.stringpool* %3, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 8192
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = getelementptr inbounds %struct.stringpool, %struct.stringpool* %3, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %56 = call i32 @s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %57 = sub nsw i32 4096, %56
  %58 = call i8* (%struct.stringpool*, i8*, ...) @stringpool_add(%struct.stringpool* %3, i8* %55, i32 %57)
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds %struct.stringpool, %struct.stringpool* %3, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = icmp eq i8* %59, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = call i32 @s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %68 = sub nsw i32 4096, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %72, 8192
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = getelementptr inbounds %struct.stringpool, %struct.stringpool* %3, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 8192
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = getelementptr inbounds %struct.stringpool, %struct.stringpool* %3, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  ret i32 0
}

declare dso_local i32 @stringpool_init(%struct.stringpool*) #1

declare dso_local i8* @stringpool_add(%struct.stringpool*, i8*, ...) #1

declare dso_local i32 @ss(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @s(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

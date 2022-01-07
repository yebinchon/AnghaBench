; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_quotes_state.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_quotes_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @quotes_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotes_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %61, %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @is_eol(%struct.parser* %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %64

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 34
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load %struct.parser*, %struct.parser** %4, align 8
  %27 = getelementptr inbounds %struct.parser, %struct.parser* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ult i8* %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.parser*, %struct.parser** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @push_token(%struct.parser* %37, i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %7, align 8
  %43 = load %struct.parser*, %struct.parser** %4, align 8
  %44 = getelementptr inbounds %struct.parser, %struct.parser* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  br label %59

47:                                               ; preds = %30, %23
  %48 = load %struct.parser*, %struct.parser** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @push_token(%struct.parser* %48, i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load %struct.parser*, %struct.parser** %4, align 8
  %54 = getelementptr inbounds %struct.parser, %struct.parser* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.parser*, %struct.parser** %4, align 8
  %56 = call i32 @pop_state(%struct.parser* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %3, align 8
  br label %71

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %18
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  br label %12

64:                                               ; preds = %12
  %65 = load %struct.parser*, %struct.parser** %4, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @push_token(%struct.parser* %65, i8* %66)
  %68 = load %struct.parser*, %struct.parser** %4, align 8
  %69 = call i32 @pop_state(%struct.parser* %68)
  %70 = load i8*, i8** %6, align 8
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %64, %47
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local i32 @is_eol(%struct.parser*, i8*) #1

declare dso_local i32 @push_token(%struct.parser*, i8*) #1

declare dso_local i32 @pop_state(%struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

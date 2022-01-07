; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utilcf-parser.h_cf_go_to_token.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utilcf-parser.h_cf_go_to_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, i8*, i8*)* @cf_go_to_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_go_to_token(%struct.cf_parser* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_parser*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %8

8:                                                ; preds = %51, %3
  %9 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %10 = call i64 @cf_next_token(%struct.cf_parser* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %14 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strref_cmp(%struct.TYPE_4__* %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %53

21:                                               ; preds = %12
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %26 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strref_cmp(%struct.TYPE_4__* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %53

33:                                               ; preds = %24, %21
  %34 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %35 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 123
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %45 = call i32 @cf_pass_pair(%struct.cf_parser* %44, i8 signext 123, i8 signext 125)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %52

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %33
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  br label %8

52:                                               ; preds = %47, %8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %32, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @cf_next_token(%struct.cf_parser*) #1

declare dso_local i64 @strref_cmp(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @cf_pass_pair(%struct.cf_parser*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

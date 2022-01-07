; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_srp.c_print_user.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_srp.c_print_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@DB_srptype = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"User entry\00", align 1
@DB_srpgN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"g N entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @print_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_user(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i8** @sk_OPENSSL_PSTRING_value(i32 %15, i32 %16)
  store i8** %17, i8*** %7, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = load i64, i64* @DB_srptype, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 73
  br i1 %25, label %26, label %40

26:                                               ; preds = %10
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @print_entry(%struct.TYPE_7__* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = load i64, i64* @DB_srpgN, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @get_index(%struct.TYPE_7__* %32, i8* %36, i8 signext 73)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @print_entry(%struct.TYPE_7__* %31, i32 %37, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %26, %10
  br label %41

41:                                               ; preds = %40, %3
  ret void
}

declare dso_local i8** @sk_OPENSSL_PSTRING_value(i32, i32) #1

declare dso_local i32 @print_entry(%struct.TYPE_7__*, i32, i32, i8*) #1

declare dso_local i32 @get_index(%struct.TYPE_7__*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

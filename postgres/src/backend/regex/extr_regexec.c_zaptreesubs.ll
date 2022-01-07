; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_zaptreesubs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_zaptreesubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.subre = type { i8, i32, %struct.subre*, %struct.subre* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.subre*)* @zaptreesubs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zaptreesubs(%struct.vars* %0, %struct.subre* %1) #0 {
  %3 = alloca %struct.vars*, align 8
  %4 = alloca %struct.subre*, align 8
  %5 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %3, align 8
  store %struct.subre* %1, %struct.subre** %4, align 8
  %6 = load %struct.subre*, %struct.subre** %4, align 8
  %7 = getelementptr inbounds %struct.subre, %struct.subre* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 8
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 40
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.subre*, %struct.subre** %4, align 8
  %13 = getelementptr inbounds %struct.subre, %struct.subre* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.vars*, %struct.vars** %3, align 8
  %22 = getelementptr inbounds %struct.vars, %struct.vars* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %11
  %26 = load %struct.vars*, %struct.vars** %3, align 8
  %27 = getelementptr inbounds %struct.vars, %struct.vars* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  %33 = load %struct.vars*, %struct.vars** %3, align 8
  %34 = getelementptr inbounds %struct.vars, %struct.vars* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  br label %40

40:                                               ; preds = %25, %11
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.subre*, %struct.subre** %4, align 8
  %43 = getelementptr inbounds %struct.subre, %struct.subre* %42, i32 0, i32 3
  %44 = load %struct.subre*, %struct.subre** %43, align 8
  %45 = icmp ne %struct.subre* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.vars*, %struct.vars** %3, align 8
  %48 = load %struct.subre*, %struct.subre** %4, align 8
  %49 = getelementptr inbounds %struct.subre, %struct.subre* %48, i32 0, i32 3
  %50 = load %struct.subre*, %struct.subre** %49, align 8
  call void @zaptreesubs(%struct.vars* %47, %struct.subre* %50)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.subre*, %struct.subre** %4, align 8
  %53 = getelementptr inbounds %struct.subre, %struct.subre* %52, i32 0, i32 2
  %54 = load %struct.subre*, %struct.subre** %53, align 8
  %55 = icmp ne %struct.subre* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.vars*, %struct.vars** %3, align 8
  %58 = load %struct.subre*, %struct.subre** %4, align 8
  %59 = getelementptr inbounds %struct.subre, %struct.subre* %58, i32 0, i32 2
  %60 = load %struct.subre*, %struct.subre** %59, align 8
  call void @zaptreesubs(%struct.vars* %57, %struct.subre* %60)
  br label %61

61:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

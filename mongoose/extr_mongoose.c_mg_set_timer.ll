; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_set_timer.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { double, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"%p %p %d -> %lu\00", align 1
@MG_F_RESOLVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mg_set_timer(%struct.mg_connection* %0, double %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %7 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  store double %8, double* %5, align 8
  %9 = load double, double* %4, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %11 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %10, i32 0, i32 0
  store double %9, double* %11, align 8
  %12 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %13 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %14 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %17 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MG_F_RESOLVING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = load double, double* %4, align 8
  %25 = fptoui double %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @DBG(i8* %26)
  %28 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %29 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MG_F_RESOLVING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %2
  %35 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %36 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %41 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to %struct.mg_connection*
  %44 = load double, double* %4, align 8
  %45 = call double @mg_set_timer(%struct.mg_connection* %43, double %44)
  br label %46

46:                                               ; preds = %39, %34, %2
  %47 = load double, double* %5, align 8
  ret double %47
}

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

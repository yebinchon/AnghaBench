; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_timer.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32*, i32, i32 }

@INVALID_SOCKET = common dso_local global i32 0, align 4
@ev_timer_handler = common dso_local global i32 0, align 4
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"awful.sad:1234\00", align 1
@c_int_eq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_timer() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %7 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %8 = load i32, i32* @INVALID_SOCKET, align 4
  %9 = load i32, i32* @ev_timer_handler, align 4
  %10 = call %struct.mg_connection* @mg_add_sock(%struct.mg_mgr* %1, i32 %8, i32 %9)
  store %struct.mg_connection* %10, %struct.mg_connection** %2, align 8
  %11 = icmp ne %struct.mg_connection* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %15 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %14, i32 0, i32 0
  store i32* %5, i32** %15, align 8
  %16 = call i32 @mg_mgr_poll(%struct.mg_mgr* %1, i32 1)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ASSERT_EQ(i32 %17, i32 0)
  %19 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %20 = call double (...) @mg_time()
  %21 = fadd double %20, 1.000000e-01
  %22 = fptosi double %21 to i32
  %23 = call i32 @mg_set_timer(%struct.mg_connection* %19, i32 %22)
  %24 = call i32 @ASSERT_EQ(i32 %23, i32 0)
  %25 = call double (...) @mg_time()
  store double %25, double* %3, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %36, %0
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 5
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = call i32 @mg_mgr_poll(%struct.mg_mgr* %1, i32 1000)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %26

39:                                               ; preds = %32
  %40 = call double (...) @mg_time()
  store double %40, double* %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ASSERT_EQ(i32 %41, i32 1)
  %43 = load double, double* %4, align 8
  %44 = load double, double* %3, align 8
  %45 = fsub double %43, %44
  %46 = call i32 @ASSERT_LT(double %45, double 9.000000e-01)
  %47 = load double, double* %4, align 8
  %48 = load double, double* %3, align 8
  %49 = fsub double %47, %48
  %50 = call i32 @ASSERT_GT(double %49, double 0x3FB70A3D70A3D70A)
  %51 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %52 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ASSERT_EQ(i32 %53, i32 0)
  %55 = call i32 @mg_mgr_poll(%struct.mg_mgr* %1, i32 1)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ASSERT_EQ(i32 %56, i32 1)
  %58 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %59 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %60 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = call i32 @mg_mgr_poll(%struct.mg_mgr* %1, i32 1)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ASSERT_EQ(i32 %64, i32 101)
  store i32 0, i32* %5, align 4
  %66 = load i32, i32* @ev_timer_handler, align 4
  %67 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %66)
  store %struct.mg_connection* %67, %struct.mg_connection** %2, align 8
  %68 = icmp ne %struct.mg_connection* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %72 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %71, i32 0, i32 0
  store i32* %5, i32** %72, align 8
  %73 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %74 = call i32 @mg_set_timer(%struct.mg_connection* %73, i32 1)
  %75 = load i32, i32* @c_int_eq, align 4
  %76 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %75, i32* %5, i8* inttoptr (i64 101 to i8*))
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ASSERT_EQ(i32 %77, i32 101)
  %79 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mg_connection* @mg_add_sock(%struct.mg_mgr*, i32, i32) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_set_timer(%struct.mg_connection*, i32) #1

declare dso_local double @mg_time(...) #1

declare dso_local i32 @ASSERT_LT(double, double) #1

declare dso_local i32 @ASSERT_GT(double, double) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i32*, i8*) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

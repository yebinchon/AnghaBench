; ModuleID = '/home/carl/AnghaBench/mongoose/src/extr_mg_net.c_mg_if_accept_new_conn.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/extr_mg_net.c_mg_if_accept_new_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32, i32, i32, i32, i32, i32, %struct.mg_connection*, i32 }
%struct.mg_add_sock_opts = type { i32 }

@MG_F_SSL = common dso_local global i32 0, align 4
@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%p %p %d %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mg_connection* @mg_if_accept_new_conn(%struct.mg_connection* %0) #0 {
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.mg_add_sock_opts, align 4
  %5 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  %6 = call i32 @memset(%struct.mg_add_sock_opts* %4, i32 0, i32 4)
  %7 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %11 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.mg_add_sock_opts, %struct.mg_add_sock_opts* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mg_connection* @mg_create_connection(i32 %9, i32 %12, i32 %14)
  store %struct.mg_connection* %15, %struct.mg_connection** %5, align 8
  %16 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %17 = icmp eq %struct.mg_connection* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.mg_connection* null, %struct.mg_connection** %2, align 8
  br label %74

19:                                               ; preds = %1
  %20 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %21 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %22 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %21, i32 0, i32 7
  store %struct.mg_connection* %20, %struct.mg_connection** %22, align 8
  %23 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %24 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %27 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %29 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %32 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %34 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %37 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %39 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %42 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %44 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MG_F_SSL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %19
  %50 = load i32, i32* @MG_F_SSL, align 4
  %51 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %52 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %19
  %56 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %57 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %60 = call i32 @mg_add_conn(i32 %58, %struct.mg_connection* %59)
  %61 = load i32, i32* @LL_DEBUG, align 4
  %62 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %63 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %64 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %65 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %68 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @LOG(i32 %61, i8* %71)
  %73 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  store %struct.mg_connection* %73, %struct.mg_connection** %2, align 8
  br label %74

74:                                               ; preds = %55, %18
  %75 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  ret %struct.mg_connection* %75
}

declare dso_local i32 @memset(%struct.mg_add_sock_opts*, i32, i32) #1

declare dso_local %struct.mg_connection* @mg_create_connection(i32, i32, i32) #1

declare dso_local i32 @mg_add_conn(i32, %struct.mg_connection*) #1

declare dso_local i32 @LOG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

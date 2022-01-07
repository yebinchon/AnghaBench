; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_simple.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { %struct.simple_data* }
%struct.simple_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.mg_connection*, %struct.simple_data* }

@.str = private unnamed_addr constant [21 x i8] c"tcp://127.0.0.1:8910\00", align 1
@cb_server = common dso_local global i32 0, align 4
@cb_client = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_simple() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.simple_data, align 8
  %7 = alloca %struct.simple_data, align 8
  %8 = alloca %struct.simple_data, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @cb_server, align 4
  %13 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %1, i8* %11, i32 %12)
  store %struct.mg_connection* %13, %struct.mg_connection** %2, align 8
  %14 = icmp ne %struct.mg_connection* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 0
  store %struct.simple_data* %7, %struct.simple_data** %18, align 8
  %19 = call i32 @memset(%struct.simple_data* %7, i32 0, i32 48)
  %20 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 9
  store %struct.simple_data* %8, %struct.simple_data** %20, align 8
  %21 = call i32 @memset(%struct.simple_data* %8, i32 0, i32 48)
  %22 = call i32 @mg_mgr_poll(%struct.mg_mgr* %1, i32 1)
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @cb_client, align 4
  %25 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %23, i32 %24)
  store %struct.mg_connection* %25, %struct.mg_connection** %3, align 8
  %26 = icmp ne %struct.mg_connection* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %30 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %29, i32 0, i32 0
  store %struct.simple_data* %6, %struct.simple_data** %30, align 8
  %31 = call i32 @memset(%struct.simple_data* %6, i32 0, i32 48)
  %32 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @mg_mgr_poll(%struct.mg_mgr* %1, i32 1)
  %36 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ASSERT_EQ(i32 %37, i32 0)
  %39 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ASSERT_EQ(i32 %40, i32 1)
  %42 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ASSERT_EQ(i32 %43, i32 1)
  %45 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ASSERT_EQ(i32 %46, i32 1)
  %48 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ASSERT_STREQ(i32 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %51 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ASSERT_STREQ(i32 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 8
  %55 = load %struct.mg_connection*, %struct.mg_connection** %54, align 8
  %56 = icmp ne %struct.mg_connection* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 8
  %60 = load %struct.mg_connection*, %struct.mg_connection** %59, align 8
  store %struct.mg_connection* %60, %struct.mg_connection** %4, align 8
  %61 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ASSERT_EQ(i32 %62, i32 0)
  %64 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ASSERT_EQ(i32 %65, i32 0)
  %67 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strcpy(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @mg_mgr_poll(%struct.mg_mgr* %1, i32 1)
  %71 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ASSERT_STREQ(i32 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ASSERT_EQ(i32 %75, i32 1)
  %77 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ASSERT_EQ(i32 %78, i32 0)
  %80 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ASSERT_EQ(i32 %81, i32 0)
  %83 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ASSERT_STREQ(i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @mg_mgr_poll(%struct.mg_mgr* %1, i32 1)
  %87 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ASSERT_STREQ(i32 %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %90 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ASSERT_EQ(i32 %91, i32 1)
  %93 = call i32 @mg_mgr_poll(%struct.mg_mgr* %1, i32 1)
  %94 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ASSERT_STREQ(i32 %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %97 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ASSERT_EQ(i32 %98, i32 1)
  %100 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ASSERT_STREQ(i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %103 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  %104 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ASSERT_STREQ(i32 %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %107 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ASSERT_STREQ(i32 %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %110 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ASSERT_STREQ(i32 %111, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %113 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ASSERT_EQ(i32 %114, i32 0)
  %116 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ASSERT_EQ(i32 %117, i32 0)
  %119 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ASSERT_EQ(i32 %120, i32 0)
  %122 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ASSERT_EQ(i32 %123, i32 0)
  %125 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %7, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ASSERT_EQ(i32 %126, i32 1)
  %128 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ASSERT_EQ(i32 %129, i32 0)
  %131 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ASSERT_EQ(i32 %132, i32 1)
  %134 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @ASSERT_EQ(i32 %135, i32 1)
  %137 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ASSERT_EQ(i32 %138, i32 1)
  %140 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %6, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ASSERT_EQ(i32 %141, i32 1)
  %143 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @ASSERT_EQ(i32 %144, i32 1)
  %146 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ASSERT_EQ(i32 %147, i32 0)
  %149 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @ASSERT_EQ(i32 %150, i32 1)
  %152 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ASSERT_EQ(i32 %153, i32 1)
  %155 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %8, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @ASSERT_EQ(i32 %156, i32 1)
  ret i8* null
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @memset(%struct.simple_data*, i32, i32) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @ASSERT_STREQ(i32, i8*) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

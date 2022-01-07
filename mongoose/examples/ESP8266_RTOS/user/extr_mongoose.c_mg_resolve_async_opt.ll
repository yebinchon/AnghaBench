; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_resolve_async_opt.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_resolve_async_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i8* }
%struct.mg_resolve_async_opts = type { i8*, i32, i32, %struct.mg_connection** }
%struct.mg_connection = type { %struct.mg_resolve_async_request* }
%struct.mg_resolve_async_request = type { i8*, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s %d %p\00", align 1
@MG_DEFAULT_NAMESERVER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"udp://%s:53\00", align 1
@mg_resolve_async_eh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_resolve_async_opt(%struct.mg_mgr* %0, i8* %1, i32 %2, i32 %3, i8* %4, %struct.mg_resolve_async_opts* byval(%struct.mg_resolve_async_opts) align 8 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mg_mgr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.mg_resolve_async_request*, align 8
  %14 = alloca %struct.mg_connection*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [17 x i8], align 16
  %17 = alloca [26 x i8], align 16
  store %struct.mg_mgr* %0, %struct.mg_mgr** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  %18 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %5, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.mg_mgr*, %struct.mg_mgr** %8, align 8
  %24 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %15, align 8
  br label %26

26:                                               ; preds = %22, %6
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %5, i32 0, i32 3
  %30 = load %struct.mg_connection**, %struct.mg_connection*** %29, align 8
  %31 = bitcast %struct.mg_connection** %30 to i8*
  %32 = call i32 @DBG(i8* %31)
  %33 = call i64 @MG_CALLOC(i32 1, i32 40)
  %34 = inttoptr i64 %33 to %struct.mg_resolve_async_request*
  store %struct.mg_resolve_async_request* %34, %struct.mg_resolve_async_request** %13, align 8
  %35 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %36 = icmp eq %struct.mg_resolve_async_request* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %116

38:                                               ; preds = %26
  %39 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %40 = getelementptr inbounds %struct.mg_resolve_async_request, %struct.mg_resolve_async_request* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @strncpy(i8* %41, i8* %42, i32 8)
  %44 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %45 = getelementptr inbounds %struct.mg_resolve_async_request, %struct.mg_resolve_async_request* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 7
  store i8 0, i8* %47, align 1
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %50 = getelementptr inbounds %struct.mg_resolve_async_request, %struct.mg_resolve_async_request* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %53 = getelementptr inbounds %struct.mg_resolve_async_request, %struct.mg_resolve_async_request* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %56 = getelementptr inbounds %struct.mg_resolve_async_request, %struct.mg_resolve_async_request* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  br label %64

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 2, %63 ]
  %66 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %67 = getelementptr inbounds %struct.mg_resolve_async_request, %struct.mg_resolve_async_request* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %5, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %5, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ %73, %71 ], [ 5, %74 ]
  %77 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %78 = getelementptr inbounds %struct.mg_resolve_async_request, %struct.mg_resolve_async_request* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = getelementptr inbounds [17 x i8], [17 x i8]* %16, i64 0, i64 0
  %83 = call i32 @mg_get_ip_address_of_nameserver(i8* %82, i32 17)
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = getelementptr inbounds [17 x i8], [17 x i8]* %16, i64 0, i64 0
  store i8* %86, i8** %15, align 8
  br label %89

87:                                               ; preds = %81
  %88 = load i8*, i8** @MG_DEFAULT_NAMESERVER, align 8
  store i8* %88, i8** %15, align 8
  br label %89

89:                                               ; preds = %87, %85
  br label %90

90:                                               ; preds = %89, %75
  %91 = getelementptr inbounds [26 x i8], [26 x i8]* %17, i64 0, i64 0
  %92 = load i8*, i8** %15, align 8
  %93 = call i32 @snprintf(i8* %91, i32 26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = load %struct.mg_mgr*, %struct.mg_mgr** %8, align 8
  %95 = getelementptr inbounds [26 x i8], [26 x i8]* %17, i64 0, i64 0
  %96 = load i32, i32* @mg_resolve_async_eh, align 4
  %97 = call i32 @MG_CB(i32 %96, i32* null)
  %98 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %94, i8* %95, i32 %97)
  store %struct.mg_connection* %98, %struct.mg_connection** %14, align 8
  %99 = load %struct.mg_connection*, %struct.mg_connection** %14, align 8
  %100 = icmp eq %struct.mg_connection* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %103 = call i32 @MG_FREE(%struct.mg_resolve_async_request* %102)
  store i32 -1, i32* %7, align 4
  br label %116

104:                                              ; preds = %90
  %105 = load %struct.mg_resolve_async_request*, %struct.mg_resolve_async_request** %13, align 8
  %106 = load %struct.mg_connection*, %struct.mg_connection** %14, align 8
  %107 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %106, i32 0, i32 0
  store %struct.mg_resolve_async_request* %105, %struct.mg_resolve_async_request** %107, align 8
  %108 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %5, i32 0, i32 3
  %109 = load %struct.mg_connection**, %struct.mg_connection*** %108, align 8
  %110 = icmp ne %struct.mg_connection** %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.mg_connection*, %struct.mg_connection** %14, align 8
  %113 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %5, i32 0, i32 3
  %114 = load %struct.mg_connection**, %struct.mg_connection*** %113, align 8
  store %struct.mg_connection* %112, %struct.mg_connection** %114, align 8
  br label %115

115:                                              ; preds = %111, %104
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %101, %37
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i64 @MG_CALLOC(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @mg_get_ip_address_of_nameserver(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @MG_CB(i32, i32*) #1

declare dso_local i32 @MG_FREE(%struct.mg_resolve_async_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

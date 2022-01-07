; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_register_http_endpoint_opt.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_register_http_endpoint_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_http_endpoint_opts = type { i32, i32*, i32* }
%struct.mg_http_proto_data = type { %struct.mg_http_endpoint* }
%struct.mg_http_endpoint = type { %struct.mg_http_endpoint*, i32, i32, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_register_http_endpoint_opt(%struct.mg_connection* %0, i8* %1, i32 %2, %struct.mg_http_endpoint_opts* byval(%struct.mg_http_endpoint_opts) align 8 %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mg_http_proto_data*, align 8
  %9 = alloca %struct.mg_http_endpoint*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mg_http_proto_data* null, %struct.mg_http_proto_data** %8, align 8
  store %struct.mg_http_endpoint* null, %struct.mg_http_endpoint** %9, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %11 = icmp eq %struct.mg_connection* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %63

13:                                               ; preds = %4
  %14 = call i64 @MG_CALLOC(i32 1, i32 40)
  %15 = inttoptr i64 %14 to %struct.mg_http_endpoint*
  store %struct.mg_http_endpoint* %15, %struct.mg_http_endpoint** %9, align 8
  %16 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %9, align 8
  %17 = icmp eq %struct.mg_http_endpoint* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %63

19:                                               ; preds = %13
  %20 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %21 = call %struct.mg_http_proto_data* @mg_http_get_proto_data(%struct.mg_connection* %20)
  store %struct.mg_http_proto_data* %21, %struct.mg_http_proto_data** %8, align 8
  %22 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %8, align 8
  %23 = icmp eq %struct.mg_http_proto_data* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %26 = call %struct.mg_http_proto_data* @mg_http_create_proto_data(%struct.mg_connection* %25)
  store %struct.mg_http_proto_data* %26, %struct.mg_http_proto_data** %8, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @mg_mk_str(i8* %28)
  %30 = call i32 @mg_strdup(i32 %29)
  %31 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %9, align 8
  %32 = getelementptr inbounds %struct.mg_http_endpoint, %struct.mg_http_endpoint* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.mg_http_endpoint_opts, %struct.mg_http_endpoint_opts* %3, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.mg_http_endpoint_opts, %struct.mg_http_endpoint_opts* %3, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mg_http_endpoint_opts, %struct.mg_http_endpoint_opts* %3, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i8* @strdup(i32* %42)
  %44 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %9, align 8
  %45 = getelementptr inbounds %struct.mg_http_endpoint, %struct.mg_http_endpoint* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.mg_http_endpoint_opts, %struct.mg_http_endpoint_opts* %3, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i8* @strdup(i32* %47)
  %49 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %9, align 8
  %50 = getelementptr inbounds %struct.mg_http_endpoint, %struct.mg_http_endpoint* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %40, %36, %27
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %9, align 8
  %54 = getelementptr inbounds %struct.mg_http_endpoint, %struct.mg_http_endpoint* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %8, align 8
  %56 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %55, i32 0, i32 0
  %57 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %56, align 8
  %58 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %9, align 8
  %59 = getelementptr inbounds %struct.mg_http_endpoint, %struct.mg_http_endpoint* %58, i32 0, i32 0
  store %struct.mg_http_endpoint* %57, %struct.mg_http_endpoint** %59, align 8
  %60 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %9, align 8
  %61 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %8, align 8
  %62 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %61, i32 0, i32 0
  store %struct.mg_http_endpoint* %60, %struct.mg_http_endpoint** %62, align 8
  br label %63

63:                                               ; preds = %51, %18, %12
  ret void
}

declare dso_local i64 @MG_CALLOC(i32, i32) #1

declare dso_local %struct.mg_http_proto_data* @mg_http_get_proto_data(%struct.mg_connection*) #1

declare dso_local %struct.mg_http_proto_data* @mg_http_create_proto_data(%struct.mg_connection*) #1

declare dso_local i32 @mg_strdup(i32) #1

declare dso_local i32 @mg_mk_str(i8*) #1

declare dso_local i8* @strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

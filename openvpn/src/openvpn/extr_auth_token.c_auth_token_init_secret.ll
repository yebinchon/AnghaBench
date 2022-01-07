; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_auth_token.c_auth_token_init_secret.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_auth_token.c_auth_token_init_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_ctx = type { i32 }
%struct.key_type = type { i32 }
%struct.buffer = type { i32 }
%struct.key = type { i32 }

@auth_token_pem_name = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ERROR: Cannot load auth-token secret\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"ERROR: not enough data in auth-token secret\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"auth-token secret\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_token_init_secret(%struct.key_ctx* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.key_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.key_type, align 4
  %8 = alloca %struct.buffer, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.key, align 4
  store %struct.key_ctx* %0, %struct.key_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = call i32 (...) @auth_token_kt()
  %12 = getelementptr inbounds %struct.key_type, %struct.key_type* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = call i32 @alloc_buf(i32 2048)
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @auth_token_pem_name, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @read_pem_key_file(%struct.buffer* %8, i32 %18, i8* %19, i8* %20)
  store i32 %21, i32* %9, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @auth_token_pem_name, align 4
  %24 = call i32 @generate_ephemeral_key(%struct.buffer* %8, i32 %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @M_FATAL, align 4
  %30 = call i32 @msg(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = call i32 @buf_read(%struct.buffer* %8, %struct.key* %10, i32 4)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @M_FATAL, align 4
  %36 = call i32 @msg(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.key_ctx*, %struct.key_ctx** %4, align 8
  %39 = call i32 @init_key_ctx(%struct.key_ctx* %38, %struct.key* %10, %struct.key_type* %7, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @free_buf(%struct.buffer* %8)
  ret void
}

declare dso_local i32 @auth_token_kt(...) #1

declare dso_local i32 @alloc_buf(i32) #1

declare dso_local i32 @read_pem_key_file(%struct.buffer*, i32, i8*, i8*) #1

declare dso_local i32 @generate_ephemeral_key(%struct.buffer*, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @buf_read(%struct.buffer*, %struct.key*, i32) #1

declare dso_local i32 @init_key_ctx(%struct.key_ctx*, %struct.key*, %struct.key_type*, i32, i8*) #1

declare dso_local i32 @free_buf(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

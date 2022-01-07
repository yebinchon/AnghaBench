; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_write_pem_key_file.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_write_pem_key_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.key = type { i32 }
%struct.buffer = type { i32 }

@M_NONFATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ERROR: could not generate random key\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: could not PEM-encode key\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"ERROR: could not write key file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_pem_key_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gc_arena, align 4
  %6 = alloca %struct.key, align 4
  %7 = alloca %struct.buffer, align 4
  %8 = alloca %struct.buffer, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 (...) @gc_new()
  %10 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = bitcast %struct.key* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = call i32 (...) @clear_buf()
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = call i32 (...) @clear_buf()
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = bitcast %struct.key* %6 to i8*
  %17 = call i32 @rand_bytes(i8* %16, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @M_NONFATAL, align 4
  %21 = call i32 @msg(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %50

22:                                               ; preds = %2
  %23 = bitcast %struct.key* %6 to i8*
  %24 = call i32 @buf_set_read(%struct.buffer* %7, i8* %23, i32 4)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @crypto_pem_encode(i8* %25, %struct.buffer* %8, %struct.buffer* %7, %struct.gc_arena* %5)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @M_WARN, align 4
  %30 = call i32 @msg(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %50

31:                                               ; preds = %22
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %31
  %39 = call i8* @BPTR(%struct.buffer* %8)
  %40 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %49

41:                                               ; preds = %34
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @buffer_write_file(i8* %42, %struct.buffer* %8)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @M_ERR, align 4
  %47 = call i32 @msg(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %50

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %38
  br label %50

50:                                               ; preds = %49, %45, %28, %19
  %51 = call i32 @secure_memzero(%struct.key* %6, i32 4)
  %52 = call i32 @buf_clear(%struct.buffer* %8)
  %53 = call i32 @gc_free(%struct.gc_arena* %5)
  ret void
}

declare dso_local i32 @gc_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @clear_buf(...) #1

declare dso_local i32 @rand_bytes(i8*, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @buf_set_read(%struct.buffer*, i8*, i32) #1

declare dso_local i32 @crypto_pem_encode(i8*, %struct.buffer*, %struct.buffer*, %struct.gc_arena*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @BPTR(%struct.buffer*) #1

declare dso_local i32 @buffer_write_file(i8*, %struct.buffer*) #1

declare dso_local i32 @secure_memzero(%struct.key*, i32) #1

declare dso_local i32 @buf_clear(%struct.buffer*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_generate_key_random.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_generate_key_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32 }
%struct.key_type = type { i32, i32, i64, i64 }
%struct.gc_arena = type { i32 }

@MAX_CIPHER_KEY_LENGTH = common dso_local global i32 0, align 4
@MAX_HMAC_KEY_LENGTH = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"ERROR: Random number generator cannot obtain entropy for key generation\00", align 1
@D_SHOW_KEY_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cipher source entropy: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"HMAC source entropy: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_key_random(%struct.key* %0, %struct.key_type* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.key_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gc_arena, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.key_type* %1, %struct.key_type** %4, align 8
  %8 = load i32, i32* @MAX_CIPHER_KEY_LENGTH, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @MAX_HMAC_KEY_LENGTH, align 4
  store i32 %9, i32* %6, align 4
  %10 = call i32 (...) @gc_new()
  %11 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  br label %12

12:                                               ; preds = %108, %2
  %13 = load %struct.key*, %struct.key** %3, align 8
  %14 = bitcast %struct.key* %13 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i32 @CLEAR(i64 %15)
  %17 = load %struct.key_type*, %struct.key_type** %4, align 8
  %18 = icmp ne %struct.key_type* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %12
  %20 = load %struct.key_type*, %struct.key_type** %4, align 8
  %21 = getelementptr inbounds %struct.key_type, %struct.key_type* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.key_type*, %struct.key_type** %4, align 8
  %26 = getelementptr inbounds %struct.key_type, %struct.key_type* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.key_type*, %struct.key_type** %4, align 8
  %31 = getelementptr inbounds %struct.key_type, %struct.key_type* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.key_type*, %struct.key_type** %4, align 8
  %37 = getelementptr inbounds %struct.key_type, %struct.key_type* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %29, %24, %19
  %40 = load %struct.key_type*, %struct.key_type** %4, align 8
  %41 = getelementptr inbounds %struct.key_type, %struct.key_type* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.key_type*, %struct.key_type** %4, align 8
  %46 = getelementptr inbounds %struct.key_type, %struct.key_type* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.key_type*, %struct.key_type** %4, align 8
  %51 = getelementptr inbounds %struct.key_type, %struct.key_type* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.key_type*, %struct.key_type** %4, align 8
  %57 = getelementptr inbounds %struct.key_type, %struct.key_type* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %49, %44, %39
  br label %60

60:                                               ; preds = %59, %12
  %61 = load %struct.key*, %struct.key** %3, align 8
  %62 = getelementptr inbounds %struct.key, %struct.key* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @rand_bytes(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.key*, %struct.key** %3, align 8
  %69 = getelementptr inbounds %struct.key, %struct.key* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @rand_bytes(i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67, %60
  %75 = load i32, i32* @M_FATAL, align 4
  %76 = call i32 @msg(i32 %75, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %79 = load %struct.key*, %struct.key** %3, align 8
  %80 = getelementptr inbounds %struct.key, %struct.key* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @format_hex(i32 %81, i32 %82, i32 0, %struct.gc_arena* %7)
  %84 = call i32 @dmsg(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %86 = load %struct.key*, %struct.key** %3, align 8
  %87 = getelementptr inbounds %struct.key, %struct.key* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @format_hex(i32 %88, i32 %89, i32 0, %struct.gc_arena* %7)
  %91 = call i32 @dmsg(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load %struct.key_type*, %struct.key_type** %4, align 8
  %93 = icmp ne %struct.key_type* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %77
  %95 = load %struct.key*, %struct.key** %3, align 8
  %96 = load %struct.key_type*, %struct.key_type** %4, align 8
  %97 = call i32 @fixup_key(%struct.key* %95, %struct.key_type* %96)
  br label %98

98:                                               ; preds = %94, %77
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.key_type*, %struct.key_type** %4, align 8
  %101 = icmp ne %struct.key_type* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.key*, %struct.key** %3, align 8
  %104 = load %struct.key_type*, %struct.key_type** %4, align 8
  %105 = call i32 @check_key(%struct.key* %103, %struct.key_type* %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br label %108

108:                                              ; preds = %102, %99
  %109 = phi i1 [ false, %99 ], [ %107, %102 ]
  br i1 %109, label %12, label %110

110:                                              ; preds = %108
  %111 = call i32 @gc_free(%struct.gc_arena* %7)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @CLEAR(i64) #1

declare dso_local i32 @rand_bytes(i32, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @dmsg(i32, i8*, i32) #1

declare dso_local i32 @format_hex(i32, i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @fixup_key(%struct.key*, %struct.key_type*) #1

declare dso_local i32 @check_key(%struct.key*, %struct.key_type*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

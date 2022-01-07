; ModuleID = '/home/carl/AnghaBench/micropython/extmod/extr_modubinascii.c_mod_binascii_hexlify.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/extr_modubinascii.c_mod_binascii_hexlify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i64 }

@MP_BUFFER_READ = common dso_local global i32 0, align 4
@mp_const_empty_bytes = common dso_local global i32 0, align 4
@mp_type_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_binascii_hexlify(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MP_BUFFER_READ, align 4
  %18 = call i32 @mp_get_buffer_raise(i32 %16, %struct.TYPE_7__* %7, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @mp_const_empty_bytes, align 4
  store i32 %23, i32* %3, align 4
  br label %99

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ugt i64 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %9, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @mp_obj_str_get_str(i32 %40)
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %31, %24
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @vstr_init_len(%struct.TYPE_6__* %8, i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %96, %42
  %54 = load i64, i64* %12, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %12, align 8
  %56 = icmp ne i64 %54, 0
  br i1 %56, label %57, label %97

57:                                               ; preds = %53
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 4
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp sgt i32 %61, 9
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 39
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 48
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %10, align 8
  %73 = load i32, i32* %71, align 4
  %74 = and i32 %73, 15
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp sgt i32 %75, 9
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 39
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %77, %66
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 48
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %11, align 8
  store i32 %82, i32* %83, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %11, align 8
  store i32 %93, i32* %94, align 4
  br label %96

96:                                               ; preds = %90, %87, %80
  br label %53

97:                                               ; preds = %53
  %98 = call i32 @mp_obj_new_str_from_vstr(i32* @mp_type_bytes, %struct.TYPE_6__* %8)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %22
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @mp_get_buffer_raise(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @mp_obj_str_get_str(i32) #1

declare dso_local i32 @vstr_init_len(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @mp_obj_new_str_from_vstr(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

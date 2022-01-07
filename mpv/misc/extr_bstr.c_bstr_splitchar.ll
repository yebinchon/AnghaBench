; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_splitchar.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_splitchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bstr_splitchar(i32 %0, %struct.bstr* %1, i8 signext %2) #0 {
  %4 = alloca %struct.bstr, align 4
  %5 = alloca %struct.bstr, align 4
  %6 = alloca %struct.bstr*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.bstr, align 4
  %10 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  store %struct.bstr* %1, %struct.bstr** %6, align 8
  store i8 %2, i8* %7, align 1
  %11 = load i8, i8* %7, align 1
  %12 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bstrchr(i32 %13, i8 signext %11)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.bstr*, %struct.bstr** %6, align 8
  %22 = icmp ne %struct.bstr* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.bstr*, %struct.bstr** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  %27 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bstr_cut(i32 %28, i32 %26)
  %30 = getelementptr inbounds %struct.bstr, %struct.bstr* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.bstr* %24 to i8*
  %32 = bitcast %struct.bstr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bstr_splice(i32 %37, i32 0, i32 %35)
  %39 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  ret i32 %41
}

declare dso_local i32 @bstrchr(i32, i8 signext) #1

declare dso_local i32 @bstr_cut(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bstr_splice(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_json.c_read_str.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_json.c_read_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i8*, i32 }

@MPV_FORMAT_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mpv_node*, i8**)* @read_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_str(i8* %0, %struct.mpv_node* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mpv_node*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %5, align 8
  store %struct.mpv_node* %1, %struct.mpv_node** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @eat_c(i8** %13, i8 signext 34)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %99

17:                                               ; preds = %3
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %57, %17
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 34
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ false, %21 ], [ %32, %27 ]
  br i1 %34, label %35, label %60

35:                                               ; preds = %33
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 34
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 92
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %41
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  br label %21

60:                                               ; preds = %33
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 34
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %99

67:                                               ; preds = %60
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8**, i8*** %7, align 8
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %67
  %76 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %76, i8 0, i64 16, i1 false)
  %77 = load i8*, i8** %8, align 8
  %78 = call { i8*, i32 } @bstr0(i8* %77)
  %79 = bitcast %struct.TYPE_7__* %12 to { i8*, i32 }*
  %80 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %79, i32 0, i32 0
  %81 = extractvalue { i8*, i32 } %78, 0
  store i8* %81, i8** %80, align 8
  %82 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %79, i32 0, i32 1
  %83 = extractvalue { i8*, i32 } %78, 1
  store i32 %83, i32* %82, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @mp_append_escaped_string(i8* %84, %struct.TYPE_7__* %11, %struct.TYPE_7__* %12)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %75
  store i32 -1, i32* %4, align 4
  br label %99

88:                                               ; preds = %75
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %8, align 8
  br label %91

91:                                               ; preds = %88, %67
  %92 = load i32, i32* @MPV_FORMAT_STRING, align 4
  %93 = load %struct.mpv_node*, %struct.mpv_node** %6, align 8
  %94 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.mpv_node*, %struct.mpv_node** %6, align 8
  %97 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %91, %87, %66, %16
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @eat_c(i8**, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local { i8*, i32 } @bstr0(i8*) #1

declare dso_local i32 @mp_append_escaped_string(i8*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

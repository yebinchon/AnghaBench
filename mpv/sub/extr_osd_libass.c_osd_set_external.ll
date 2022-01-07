; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_osd_set_external.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_osd_set_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, i32, %struct.osd_object** }
%struct.osd_object = type { i32, i32, %struct.osd_external* }
%struct.osd_external = type { i8*, i32, i32, i64 }

@OSDTYPE_EXTERNAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_set_external(%struct.osd_state* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.osd_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.osd_object*, align 8
  %12 = alloca %struct.osd_external*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.osd_external, align 8
  %15 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %17 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %16, i32 0, i32 1
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  %19 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %20 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %19, i32 0, i32 2
  %21 = load %struct.osd_object**, %struct.osd_object*** %20, align 8
  %22 = load i64, i64* @OSDTYPE_EXTERNAL, align 8
  %23 = getelementptr inbounds %struct.osd_object*, %struct.osd_object** %21, i64 %22
  %24 = load %struct.osd_object*, %struct.osd_object** %23, align 8
  store %struct.osd_object* %24, %struct.osd_object** %11, align 8
  store %struct.osd_external* null, %struct.osd_external** %12, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %50, %5
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %28 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %33 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %32, i32 0, i32 2
  %34 = load %struct.osd_external*, %struct.osd_external** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %34, i64 %36
  %38 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %44 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %43, i32 0, i32 2
  %45 = load %struct.osd_external*, %struct.osd_external** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %45, i64 %47
  store %struct.osd_external* %48, %struct.osd_external** %12, align 8
  br label %53

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %25

53:                                               ; preds = %42, %25
  %54 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %55 = icmp ne %struct.osd_external* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %162

60:                                               ; preds = %56, %53
  %61 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %62 = icmp ne %struct.osd_external* %61, null
  br i1 %62, label %86, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %14, i32 0, i32 0
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %64, align 8
  %66 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %14, i32 0, i32 1
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %14, i32 0, i32 2
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %14, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %70 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %71 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %70, i32 0, i32 2
  %72 = load %struct.osd_external*, %struct.osd_external** %71, align 8
  %73 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %74 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @MP_TARRAY_APPEND(%struct.osd_object* %69, %struct.osd_external* %72, i32 %75, %struct.osd_external* byval(%struct.osd_external) align 8 %14)
  %77 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %78 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %77, i32 0, i32 2
  %79 = load %struct.osd_external*, %struct.osd_external** %78, align 8
  %80 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %81 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %79, i64 %84
  store %struct.osd_external* %85, %struct.osd_external** %12, align 8
  br label %86

86:                                               ; preds = %63, %60
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %114, label %89

89:                                               ; preds = %86
  %90 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %91 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %92 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %91, i32 0, i32 2
  %93 = load %struct.osd_external*, %struct.osd_external** %92, align 8
  %94 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %93, i64 0
  %95 = ptrtoint %struct.osd_external* %90 to i64
  %96 = ptrtoint %struct.osd_external* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 24
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %15, align 4
  %100 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %101 = call i32 @destroy_external(%struct.osd_external* %100)
  %102 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %103 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %102, i32 0, i32 2
  %104 = load %struct.osd_external*, %struct.osd_external** %103, align 8
  %105 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %106 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @MP_TARRAY_REMOVE_AT(%struct.osd_external* %104, i32 %107, i32 %108)
  %110 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %111 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %113 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %162

114:                                              ; preds = %86
  %115 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %116 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %121 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = call i64 @strcmp(i64 %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %119
  %127 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %128 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %134 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %132, %126, %119, %114
  %139 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %140 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @talloc_free(i64 %141)
  %143 = load i8*, i8** %10, align 8
  %144 = call i64 @talloc_strdup(i32* null, i8* %143)
  %145 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %146 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %149 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %152 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %154 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %155 = load %struct.osd_external*, %struct.osd_external** %12, align 8
  %156 = call i32 @update_external(%struct.osd_state* %153, %struct.osd_object* %154, %struct.osd_external* %155)
  %157 = load %struct.osd_object*, %struct.osd_object** %11, align 8
  %158 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  %159 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %160 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  br label %161

161:                                              ; preds = %138, %132
  br label %162

162:                                              ; preds = %161, %89, %59
  %163 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %164 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %163, i32 0, i32 1
  %165 = call i32 @pthread_mutex_unlock(i32* %164)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.osd_object*, %struct.osd_external*, i32, %struct.osd_external* byval(%struct.osd_external) align 8) #1

declare dso_local i32 @destroy_external(%struct.osd_external*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.osd_external*, i32, i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @talloc_free(i64) #1

declare dso_local i64 @talloc_strdup(i32*, i8*) #1

declare dso_local i32 @update_external(%struct.osd_state*, %struct.osd_object*, %struct.osd_external*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

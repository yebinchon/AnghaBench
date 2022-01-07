; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_handle_close.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_handle_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i64, i64, i64, %struct.TYPE_21__, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_15__, %struct.TYPE_19__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i64 }

@NFS4_OK = common dso_local global i32 0, align 4
@NF4REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"removing a renamed file %s\0A\00", align 1
@OPEN_DELEGATE_WRITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"calling nfs41_remove for %s\0A\00", align 1
@NFS4ERR_FILE_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"nfs41_remove() failed with error %s.\0A\00", align 1
@ERROR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @handle_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_close(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load i32, i32* @NFS4_OK, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @NFS4_OK, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %7, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NF4REG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pnfs_layout_state_close(i32 %25, %struct.TYPE_18__* %26, i64 %29)
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = call i32 @nfs41_delegation_remove_srvopen(i32 %42, %struct.TYPE_21__* %44)
  br label %46

46:                                               ; preds = %39, %31
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %129

51:                                               ; preds = %46
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %8, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %51
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = call i32 @create_silly_rename(i32* %65, %struct.TYPE_15__* %68, %struct.TYPE_19__* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = call i32 @do_nfs41_close(%struct.TYPE_18__* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %138

76:                                               ; preds = %59
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %51
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  %86 = load i32, i32* @OPEN_DELEGATE_WRITE, align 4
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @nfs41_delegation_return(i32 %83, %struct.TYPE_21__* %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %117, %80
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @nfs41_remove(i32 %96, i32* %98, %struct.TYPE_19__* %99, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %93
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @NFS4ERR_FILE_OPEN, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = call i32 @do_nfs41_close(%struct.TYPE_18__* %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  br label %93

120:                                              ; preds = %112
  br label %138

121:                                              ; preds = %108
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @nfs_error_string(i32 %122)
  %124 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @ERROR_INTERNAL_ERROR, align 4
  %127 = call i32 @nfs_to_windows_error(i32 %125, i32 %126)
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %121, %93
  br label %129

129:                                              ; preds = %128, %46
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %136 = call i32 @do_nfs41_close(%struct.TYPE_18__* %135)
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %129
  br label %138

138:                                              ; preds = %137, %120, %75
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %140 = call i32 @client_state_remove(%struct.TYPE_18__* %139)
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %143, %138
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @pnfs_layout_state_close(i32, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @nfs41_delegation_remove_srvopen(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @dprintf(i32, i8*, i32) #1

declare dso_local i32 @create_silly_rename(i32*, %struct.TYPE_15__*, %struct.TYPE_19__*) #1

declare dso_local i32 @do_nfs41_close(%struct.TYPE_18__*) #1

declare dso_local i32 @nfs41_delegation_return(i32, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @nfs41_remove(i32, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @nfs_error_string(i32) #1

declare dso_local i32 @nfs_to_windows_error(i32, i32) #1

declare dso_local i32 @client_state_remove(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

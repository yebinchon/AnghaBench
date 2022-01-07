; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_op_cb_notify_deviceid_args.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_op_cb_notify_deviceid_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.cb_notify_deviceid_args = type { i64, i64, %struct.notify_deviceid4*, %struct.notify4* }
%struct.notify_deviceid4 = type { i32 }
%struct.notify4 = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@CB_COMPOUND_MAX_OPERATIONS = common dso_local global i32 0, align 4
@common_notify4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"notify_deviceid.notify_list\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"notify_deviceid.change\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"notify_deviceid.delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.cb_notify_deviceid_args*)* @op_cb_notify_deviceid_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_cb_notify_deviceid_args(%struct.TYPE_9__* %0, %struct.cb_notify_deviceid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.cb_notify_deviceid_args*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.notify4*, align 8
  %12 = alloca %struct.notify_deviceid4*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.cb_notify_deviceid_args* %1, %struct.cb_notify_deviceid_args** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %15 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %14, i32 0, i32 3
  %16 = bitcast %struct.notify4** %15 to i8**
  %17 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %18 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %17, i32 0, i32 0
  %19 = load i32, i32* @CB_COMPOUND_MAX_OPERATIONS, align 4
  %20 = load i64, i64* @common_notify4, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @xdr_array(%struct.TYPE_9__* %13, i8** %16, i64* %18, i32 %19, i32 24, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 @CBX_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %148

27:                                               ; preds = %2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %38 [
    i32 128, label %31
    i32 129, label %36
  ]

31:                                               ; preds = %27
  %32 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %33 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %32, i32 0, i32 2
  %34 = load %struct.notify_deviceid4*, %struct.notify_deviceid4** %33, align 8
  %35 = call i32 @free(%struct.notify_deviceid4* %34)
  br label %36

36:                                               ; preds = %27, %31
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %3, align 4
  br label %150

38:                                               ; preds = %27
  %39 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %40 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %60, %38
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %44 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %49 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %48, i32 0, i32 3
  %50 = load %struct.notify4*, %struct.notify4** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.notify4, %struct.notify4* %50, i64 %51
  %53 = getelementptr inbounds %struct.notify4, %struct.notify4* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %57 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %47
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %41

63:                                               ; preds = %41
  %64 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %65 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.notify_deviceid4* @calloc(i64 %66, i32 4)
  %68 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %69 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %68, i32 0, i32 2
  store %struct.notify_deviceid4* %67, %struct.notify_deviceid4** %69, align 8
  %70 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %71 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %70, i32 0, i32 2
  %72 = load %struct.notify_deviceid4*, %struct.notify_deviceid4** %71, align 8
  %73 = icmp eq %struct.notify_deviceid4* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %3, align 4
  br label %150

76:                                               ; preds = %63
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %77

77:                                               ; preds = %144, %76
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %80 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %147

83:                                               ; preds = %77
  %84 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %85 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %84, i32 0, i32 3
  %86 = load %struct.notify4*, %struct.notify4** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.notify4, %struct.notify4* %86, i64 %87
  store %struct.notify4* %88, %struct.notify4** %11, align 8
  %89 = load %struct.notify4*, %struct.notify4** %11, align 8
  %90 = getelementptr inbounds %struct.notify4, %struct.notify4* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.notify4*, %struct.notify4** %11, align 8
  %93 = getelementptr inbounds %struct.notify4, %struct.notify4* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @XDR_DECODE, align 4
  %96 = call i32 @xdrmem_create(%struct.TYPE_9__* %6, i32 %91, i32 %94, i32 %95)
  store i64 0, i64* %8, align 8
  br label %97

97:                                               ; preds = %140, %83
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.notify4*, %struct.notify4** %11, align 8
  %100 = getelementptr inbounds %struct.notify4, %struct.notify4* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %98, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %97
  %105 = load %struct.cb_notify_deviceid_args*, %struct.cb_notify_deviceid_args** %5, align 8
  %106 = getelementptr inbounds %struct.cb_notify_deviceid_args, %struct.cb_notify_deviceid_args* %105, i32 0, i32 2
  %107 = load %struct.notify_deviceid4*, %struct.notify_deviceid4** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %9, align 8
  %110 = getelementptr inbounds %struct.notify_deviceid4, %struct.notify_deviceid4* %107, i64 %108
  store %struct.notify_deviceid4* %110, %struct.notify_deviceid4** %12, align 8
  %111 = load %struct.notify4*, %struct.notify4** %11, align 8
  %112 = getelementptr inbounds %struct.notify4, %struct.notify4* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.notify_deviceid4*, %struct.notify_deviceid4** %12, align 8
  %119 = getelementptr inbounds %struct.notify_deviceid4, %struct.notify_deviceid4* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.notify_deviceid4*, %struct.notify_deviceid4** %12, align 8
  %121 = getelementptr inbounds %struct.notify_deviceid4, %struct.notify_deviceid4* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %139 [
    i32 131, label %123
    i32 130, label %131
  ]

123:                                              ; preds = %104
  %124 = load %struct.notify_deviceid4*, %struct.notify_deviceid4** %12, align 8
  %125 = call i32 @cb_notify_deviceid_change(%struct.TYPE_9__* %6, %struct.notify_deviceid4* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = call i32 @CBX_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %148

130:                                              ; preds = %123
  br label %139

131:                                              ; preds = %104
  %132 = load %struct.notify_deviceid4*, %struct.notify_deviceid4** %12, align 8
  %133 = call i32 @cb_notify_deviceid_delete(%struct.TYPE_9__* %6, %struct.notify_deviceid4* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = call i32 @CBX_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %148

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %104, %138, %130
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %8, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %8, align 8
  br label %97

143:                                              ; preds = %97
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %7, align 8
  br label %77

147:                                              ; preds = %77
  br label %148

148:                                              ; preds = %147, %136, %128, %25
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %74, %36
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @xdr_array(%struct.TYPE_9__*, i8**, i64*, i32, i32, i32) #1

declare dso_local i32 @CBX_ERR(i8*) #1

declare dso_local i32 @free(%struct.notify_deviceid4*) #1

declare dso_local %struct.notify_deviceid4* @calloc(i64, i32) #1

declare dso_local i32 @xdrmem_create(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @cb_notify_deviceid_change(%struct.TYPE_9__*, %struct.notify_deviceid4*) #1

declare dso_local i32 @cb_notify_deviceid_delete(%struct.TYPE_9__*, %struct.notify_deviceid4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

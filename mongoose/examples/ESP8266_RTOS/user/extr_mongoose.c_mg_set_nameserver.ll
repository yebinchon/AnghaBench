; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_set_nameserver.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_set_nameserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_set_nameserver(%struct.mg_mgr* %0, i8* %1) #0 {
  %3 = alloca %struct.mg_mgr*, align 8
  %4 = alloca i8*, align 8
  store %struct.mg_mgr* %0, %struct.mg_mgr** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %6 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = call i32 @MG_FREE(i8* %8)
  %10 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %11 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @strdup(i8* %15)
  %17 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %18 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  br label %19

19:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @MG_FREE(i8*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

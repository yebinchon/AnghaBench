; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_sendrecvmsg.c_init_ancillary_registry.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_sendrecvmsg.c_init_ancillary_registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ancillary_registry = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ancillary_registery_free_elem = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_HOPLIMIT = common dso_local global i32 0, align 4
@IPV6_PKTINFO = common dso_local global i32 0, align 4
@IPV6_TCLASS = common dso_local global i32 0, align 4
@SCM_CREDENTIALS = common dso_local global i32 0, align 4
@SCM_RIGHTS = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@calculate_scm_rights_space = common dso_local global i32 0, align 4
@from_zval_write_fd_array = common dso_local global i32 0, align 4
@from_zval_write_in6_pktinfo = common dso_local global i32 0, align 4
@from_zval_write_int = common dso_local global i32 0, align 4
@from_zval_write_ucred = common dso_local global i32 0, align 4
@to_zval_read_fd_array = common dso_local global i32 0, align 4
@to_zval_read_in6_pktinfo = common dso_local global i32 0, align 4
@to_zval_read_int = common dso_local global i32 0, align 4
@to_zval_read_ucred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_ancillary_registry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ancillary_registry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ancillary_registry, i32 0, i32 0), align 4
  %3 = load i32, i32* @ancillary_registery_free_elem, align 4
  %4 = call i32 @zend_hash_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ancillary_registry, i32 0, i32 1), i32 32, i32* null, i32 %3, i32 1)
  ret void
}

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
